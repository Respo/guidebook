
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |respo-router.calcit/ |docs-workflow/ |js-ffi/
      :type-slots $ {}
  :files $ {}
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'Site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Site (:storage-key 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ .unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site (Site :storage-key |workflow)
          :examples $ []
          :schema $ :: 'app.config/Site
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel (typed/new-reel schema/store)
          :examples $ []
          :schema $ :: 'Ref $ :: 'reel.typed/State 'docs-workflow.schema/Op 'docs-workflow.schema/Store
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when config/dev? $ println |Dispatch: op
            match (typed/decode-control op)
              (:some control)
                reset! *reel $ typed/apply-control updater @*reel control
              (:none)
                match op
                  (:states cursor data)
                    match
                      try-decode-map-as cursor $ :: 'List 'Tag
                      (:ok typed-cursor)
                        reset! *reel $ typed/record-op updater @*reel (docs-schema/Op :states typed-cursor data) (generate-id!)
                          :timestamp $ shared/date-now-snapshot
                      (:err message) (eprintln message)
                  (:hydrate-storage data)
                    match (try-decode-map-as data 'docs-workflow.schema/Store)
                      (:ok store)
                        reset! *reel $ typed/record-op updater @*reel (docs-schema/Op :hydrate-storage store) (generate-id!)
                          :timestamp $ shared/date-now-snapshot
                      (:err message) (eprintln message)
                  _ $ eprintln |Unknown-operation: op
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Enum
            :features $ #{} :js-ffi
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (register-languages!)
            println "|Running mode:" $ if config/dev? |dev |release
            if config/dev? $ load-console-formatter!
            render-app!
            add-watch! *reel :changes $ fn (reel prev) (render-app!)
            listen-devtools! |k dispatch!
            browser/set-before-unload! $ fn (event) (persist-storage!)
            browser/set-interval! persist-storage! 60000
            println "|App started."
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mount-target ()
            .query-selector (js-cast js/document dom/DomDocument) |.app
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ []
            :features $ #{} :js-ffi
            :return $ :: 'JsNullish 'respo.dom/DomElement
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! () (js/console.log |persist)
            browser/storage-set! (:storage-key config/site)
              format-cirru-edn $ :store @*reel
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch! *reel :changes) (clear-cache!)
                add-watch! *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ typed/refresh updater @*reel schema/store
                hud! |ok~ |Ok
              hud! |error build-errors
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! (mount-target) (comp-container @*reel schema/docs)
              fn (op)
                hint-fn $ {}
                  :args $ [] 'Dynamic
                  :return 'Unit
                  :features $ #{} :js-ffi
                if (enum? op) (dispatch! op) (raise "|Expected an Enum render action")
                , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            respo.core :refer $ render! clear-cache!
            docs-workflow.comp.container :refer $ comp-container
            app.updater :refer $ updater
            app.schema :as schema
            reel.util :refer $ listen-devtools!
            app.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            docs-workflow.config :refer $ register-languages!
            reel.typed :as typed
            js-ffi.browser :as browser
            js-ffi.shared :as shared
            respo.dom :as dom
            docs-workflow.schema :as docs-schema
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'docs $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def docs
            []
              DocNode :title |Home :key :home :content (load-doc |home.md) :children $ []
              DocNode :title "|Beginner Guide" :key :beginner-guide :content (load-doc |beginner-guide.md) :children $ []
              DocNode :title |Guide :key :guide :content (load-doc |guide.md) :children $ []
                DocNode :title "|Why Respo" :key :why-respo :content (load-doc |guide/why-respo.md) :children $ []
                DocNode :title "|Pros and Cons" :key :pros-and-cons :content (load-doc |guide/pros-and-cons.md) :children $ []
                DocNode :title "|DOM Elements" :key :dom-elements :content (load-doc |guide/dom-elements.md) :children $ []
                DocNode :title "|DOM Properties" :key :dom-properties :content (load-doc |guide/dom-properties.md) :children $ []
                DocNode :title "|DOM Events" :key :dom-events :content (load-doc |guide/dom-events.md) :children $ []
                DocNode :title |Styles :key :styles :content (load-doc |guide/styles.md) :children $ []
                DocNode :title "|Virtual DOM" :key :virtual-dom :content (load-doc |guide/virtual-dom.md) :children $ []
                DocNode :title "|Define Effect" :key :defeffect :content (load-doc |apis/defeffect.md) :children $ []
                DocNode :title "|List Rendering" :key :render-list :content (load-doc |guide/render-list.md) :children $ []
                DocNode :title "|Component States" :key :component-states :content (load-doc |guide/component-states.md) :children $ []
                DocNode :title "|Hot Swapping" :key :hot-swapping :content (load-doc |guide/hot-swapping.md) :children $ []
                DocNode :title "|Base Components" :key :base-components :content (load-doc |guide/base-components.md) :children $ []
                DocNode :title "|Server Rendering" :key :server-rendering :content (load-doc |guide/server-rendering.md) :children $ []
                DocNode :title "|Trouble Shooting" :key :trouble-shooting :content (load-doc |guide/trouble-shooting.md) :children $ []
              DocNode :title |API :key :api :content (load-doc |api.md) :children $ []
                DocNode :title |defcomp :key :defcomp :content (load-doc |apis/defcomp.md) :children $ []
                DocNode :title |div :key :div :content (load-doc |apis/div.md) :children $ []
                DocNode :title |<> :key :expand-tag :content (load-doc |apis/expand-tag.md) :children $ []
                DocNode :title |defeffect :key :defeffect :content (load-doc |apis/defeffect.md) :children $ []
                DocNode :title |create-element :key :create-element :content (load-doc |apis/create-element.md) :children $ []
                DocNode :title |render! :key :render! :content (load-doc |apis/render_.md) :children $ []
                DocNode :title |clear-cache! :key :clear-cache! :content (load-doc |apis/clear-cache_.md) :children $ []
                DocNode :title |realize-ssr! :key :realize-ssr! :content (load-doc |apis/realize-ssr_.md) :children $ []
                DocNode :title |list-> :key :list-> :content (load-doc |apis/list-_.md) :children $ []
                DocNode :title |>> :key :pick-states :content (load-doc |apis/pick-states.md) :children $ []
                DocNode :title |comp-space :key :comp-space :content (load-doc |apis/comp-space.md) :children $ []
                DocNode :title |comp-inspect :key :comp-inspect :content (load-doc |apis/comp-inspect.md) :children $ []
                DocNode :title |make-string :key :make-string :content (load-doc |apis/make-string.md) :children $ []
                DocNode :title |render-app :key :render-app :content (load-doc |apis/render-app.md) :children $ []
                DocNode :title |purify-element :key :purify-element :content (load-doc |apis/purify-element.md) :children $ []
                DocNode :title |mute-element :key :mute-element :content (load-doc |apis/mute-element.md) :children $ []
                DocNode :title |find-element-diffs :key :find-element-diffs :content (load-doc |apis/find-element-diffs.md) :children $ []
                DocNode :title |apply-dom-changes :key :apply-dom-changes :content (load-doc |apis/apply-dom-changes.md) :children $ []
                DocNode :title |activate-instance! :key :activate-instance :content (load-doc |apis/activate-instance.md) :children $ []
                DocNode :title |patch-instance! :key :patch-instance :content (load-doc |apis/patch-instance.md) :children $ []
              DocNode :title |Community :key :community :content (load-doc |community.md) :children $ []
          :examples $ []
          :schema $ :: 'List 'docs-workflow.schema/DocNode
        'load-doc $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defmacro load-doc (filename)
            read-file $ str |docs/ filename
          :examples $ []
          :schema $ :: 'Macro $ {}
            :capabilities $ #{} :fs-read
            :expansion $ :: 'Expr 'String
            :required $ [] 'Syntax
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            Store :states $ {} $ :cursor ([])
          :examples $ []
          :schema $ :: 'docs-workflow.schema/Store
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
          :require $ docs-workflow.schema :refer $ DocNode Store
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time) (docs-updater/updater store op op-id op-time)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'docs-workflow.schema/Store)
            :args $ [] 'docs-workflow.schema/Store 'docs-workflow.schema/Op 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require $ docs-workflow.updater :as docs-updater

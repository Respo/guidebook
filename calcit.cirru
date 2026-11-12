
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |respo-router.calcit/ |docs-workflow/ |js-ffi/
      :type-slots $ {} $ :dispatch-op 'docs-workflow.schema/Op
  :files $ {}
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'Site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Site (:storage-key String)
          :examples $ []
          :schema $ quote StructDef
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ .unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ quote Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site (Site :storage-key |workflow)
          :examples $ []
          :schema $ quote Site
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel (typed/new-reel schema/store)
          :examples $ []
          :schema $ quote $ Ref (typed/State docs-workflow.schema/Op docs-workflow.schema/Store)
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when config/dev? $ println |Dispatch: op
            reset! *reel $ typed/record-op updater @*reel op (generate-id!)
              :timestamp $ shared/date-now-snapshot
            , &unit
          :examples $ []
          :schema $ quote $ Fn docs-workflow.schema/Op (-> Unit) (:features :io :js-ffi :state)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (register-languages!)
            println "|Running mode:" $ if config/dev? |dev |release
            if config/dev? $ load-console-formatter!
            render-app!
            add-watch! *reel :changes $ fn (reel prev) (render-app!)
            listen-devtools-toggle! |k $ fn () $ on-control! (typed/Control :toggle)
            browser/set-before-unload! $ fn (event) (persist-storage!)
            browser/set-interval! persist-storage! 60000
            println "|App started."
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :js-ffi :state)
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mount-target ()
            .unwrap $ respo-browser/query-selector |.app
          :examples $ []
          :schema $ quote $ Fn (-> respo.dom/DomElement) (:features :js-ffi)
        'on-control! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-control! (control)
            when config/dev? $ println |Dispatch: control
            reset! *reel $ typed/apply-control updater @*reel control
            , &unit
          :examples $ []
          :schema $ quote $ Fn typed/Control (-> Unit) (:features :io :js-ffi :state)
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! () (js/console.log |persist)
            browser/storage-set! (:storage-key config/site)
              format-cirru-edn $ :store @*reel
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi :state)
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
          :schema $ quote $ Fn (-> Unit) (:features :io :js-ffi :state)
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render-with! (mount-target)
              fn () $ comp-container @*reel schema/docs on-control!
              , dispatch!
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :io :js-ffi :state)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            respo.core :refer $ render-with! clear-cache!
            docs-workflow.comp.container :refer $ comp-container
            app.updater :refer $ updater
            app.schema :as schema
            reel.util :refer $ listen-devtools-toggle!
            app.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            docs-workflow.config :refer $ register-languages!
            reel.typed :as typed
            js-ffi.browser :as browser
            js-ffi.shared :as shared
            respo.ffi.browser :as respo-browser
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
          :schema $ quote $ List DocNode
        'load-doc $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defmacro load-doc (filename)
            read-file $ str |docs/ filename
          :examples $ []
          :schema $ quote $ Macro Syntax
            -> $ Expr String
            :capabilities :fs-read
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            Store :states $ {} $ :cursor ([])
          :examples $ []
          :schema $ quote Store
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
          :require $ docs-workflow.schema :refer $ DocNode Store
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time) (docs-updater/updater store op op-id op-time)
          :examples $ []
          :schema $ quote $ Fn docs-workflow.schema/Store docs-workflow.schema/Op String Number (-> docs-workflow.schema/Store)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require $ docs-workflow.updater :as docs-updater

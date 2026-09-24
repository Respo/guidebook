
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!)
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
            = |dev $ option:unwrap-or (get-env |mode) |release
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
          :code $ quote $ defatom *reel (typed/new-reel schema/store)
          :examples $ []
          :schema $ :: 'Ref $ :: 'reel.typed/State 'app.schema/Op 'app.schema/Store
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when config/dev? $ match op
              (:states _ _) &unit
              _ $ js/console.log |Dispatch: op
            let
                typed-op $ assert-type op 'Enum
                control $ typed/decode-control typed-op
              reset! *reel $ assert-type
                match control
                  (:some action) (typed/apply-control updater @*reel action)
                  (:none)
                    typed/record-op updater @*reel (assert-type typed-op 'app.schema/Op) (generate-id!) (unsafe-coerce js/Date.now 'Number)
                :: 'reel.typed/State 'app.schema/Op 'app.schema/Store
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (register-languages!)
            println "|Running mode:" $ if config/dev? |dev |release
            if config/dev? $ load-console-formatter!
            render-app!
            add-watch *reel :changes $ fn (reel prev) (render-app!)
            listen-devtools! |k dispatch!
            set-before-unload! $ fn (event) (persist-storage!)
            set-interval! persist-storage! 60000
            println "|App started."
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target
            option:unwrap $ query-selector |.app
          :examples $ []
          :schema $ :: 'js-ffi.browser/DomElementHost
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! () (js/console.log |persist)
            storage-set! (:storage-key config/site)
              format-cirru-edn $ :store @*reel
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ typed/refresh updater @*reel schema/store
                hud! |ok~ |Ok
              hud! |error build-errors
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            match (query-selector |.app)
              (:some target)
                render! target (comp-container @*reel schema/docs) dispatch!
              (:none) &unit
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
            reel.schema :as reel-schema
            app.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            docs-workflow.config :refer $ register-languages!
            reel.typed :as typed
            js-ffi.browser :refer $ [] DomElementHost query-selector set-before-unload! set-interval! storage-set!
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op (:states 'List 'Dynamic) (:hydrate-storage 'app.schema/Store)
          :examples $ []
          :schema $ :: 'EnumDef
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store (:states 'Map)
          :examples $ []
          :schema $ :: 'StructDef
        'docs $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def docs
            []
              {} (:title |Home) (:key :home)
                :content $ load-doc |home.md
                :children $ []
              {} (:title "|Beginner Guide") (:key :beginner-guide)
                :content $ load-doc |beginner-guide.md
                :children $ []
              {} (:title |Guide) (:key :guide)
                :content $ load-doc |guide.md
                :children $ []
                  {} (:title "|Why Respo") (:key :why-respo)
                    :content $ load-doc |guide/why-respo.md
                  {} (:title "|Pros and Cons") (:key :pros-and-cons)
                    :content $ load-doc |guide/pros-and-cons.md
                  {} (:title "|DOM Elements") (:key :dom-elements)
                    :content $ load-doc |guide/dom-elements.md
                  {} (:title "|DOM Properties") (:key :dom-properties)
                    :content $ load-doc |guide/dom-properties.md
                  {} (:title "|DOM Events") (:key :dom-events)
                    :content $ load-doc |guide/dom-events.md
                  {} (:title |Styles) (:key :styles)
                    :content $ load-doc |guide/styles.md
                  {} (:title "|Virtual DOM") (:key :virtual-dom)
                    :content $ load-doc |guide/virtual-dom.md
                  {} (:title "|Define Effect") (:key :defeffect)
                    :content $ load-doc |apis/defeffect.md
                  {} (:title "|List Rendering") (:key :render-list)
                    :content $ load-doc |guide/render-list.md
                  {} (:title "|Component States") (:key :component-states)
                    :content $ load-doc |guide/component-states.md
                  {} (:title "|Hot Swapping") (:key :hot-swapping)
                    :content $ load-doc |guide/hot-swapping.md
                  {} (:title "|Base Components") (:key :base-components)
                    :content $ load-doc |guide/base-components.md
                  {} (:title "|Server Rendering") (:key :server-rendering)
                    :content $ load-doc |guide/server-rendering.md
                  {} (:title "|Trouble Shooting") (:key :trouble-shooting)
                    :content $ load-doc |guide/trouble-shooting.md
              {} (:title |API) (:key :api)
                :content $ load-doc |api.md
                :children $ []
                  {} (:title |defcomp) (:key :defcomp)
                    :content $ load-doc |apis/defcomp.md
                  {} (:title |div) (:key :div)
                    :content $ load-doc |apis/div.md
                  {} (:title |<>) (:key :expand-tag)
                    :content $ load-doc |apis/expand-tag.md
                  {} (:title |defeffect) (:key :defeffect)
                    :content $ load-doc |apis/defeffect.md
                  {} (:title |create-element) (:key :create-element)
                    :content $ load-doc |apis/create-element.md
                  {} (:title |render!) (:key :render!)
                    :content $ load-doc |apis/render_.md
                  {} (:title |clear-cache!) (:key :clear-cache!)
                    :content $ load-doc |apis/clear-cache_.md
                  {} (:title |realize-ssr!) (:key :realize-ssr!)
                    :content $ load-doc |apis/realize-ssr_.md
                  {} (:title |list->) (:key :list->)
                    :content $ load-doc |apis/list-_.md
                  {} (:title |>>) (:key :pick-states)
                    :content $ load-doc |apis/pick-states.md
                  {} (:title |comp-space) (:key :comp-space)
                    :content $ load-doc |apis/comp-space.md
                  {} (:title |comp-inspect) (:key :comp-inspect)
                    :content $ load-doc |apis/comp-inspect.md
                  {} (:title |make-string) (:key :make-string)
                    :content $ load-doc |apis/make-string.md
                  {} (:title |render-app) (:key :render-app)
                    :content $ load-doc |apis/render-app.md
                  {} (:title |purify-element) (:key :purify-element)
                    :content $ load-doc |apis/purify-element.md
                  {} (:title |mute-element) (:key :mute-element)
                    :content $ load-doc |apis/mute-element.md
                  {} (:title |find-element-diffs) (:key :find-element-diffs)
                    :content $ load-doc |apis/find-element-diffs.md
                  {} (:title |apply-dom-changes) (:key :apply-dom-changes)
                    :content $ load-doc |apis/apply-dom-changes.md
                  {} (:title |activate-instance!) (:key :activate-instance)
                    :content $ load-doc |apis/activate-instance.md
                  {} (:title |patch-instance!) (:key :patch-instance)
                    :content $ load-doc |apis/patch-instance.md
              {} (:title |Community) (:key :community)
                :content $ load-doc |community.md
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
          :schema $ :: 'app.schema/Store
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:states cursor s)
                assoc store :states $ assert-type
                  update-state-tree (:states store) cursor s
                  , 'Map
              (:hydrate-storage data) data
              _ $ do (eprintln "|unknown op:" op) store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Store)
            :args $ [] 'app.schema/Store 'app.schema/Op 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require $ respo.cursor :refer $ [] update-state-tree

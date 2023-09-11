
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version |0.0.1)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |respo-router.calcit/ |alerts.calcit/ |docs-workflow/
  :entries $ {}
  :files $ {}
    |app.config $ %{} :FileEntry
      :defs $ {}
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ quote
            def dev? $ = "\"dev" (get-env "\"mode" "\"release")
        |site $ %{} :CodeEntry (:doc |)
          :code $ quote
            def site $ {} (:storage-key "\"workflow")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns app.config)
    |app.main $ %{} :FileEntry
      :defs $ {}
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ quote
            defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op)
              when
                and config/dev? $ not= :states (nth op 0)
                js/console.log "\"Dispatch:" op
              reset! *reel $ reel-updater updater @*reel op
        |main! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn main! () (register-languages!)
              println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
              if config/dev? $ load-console-formatter!
              render-app!
              add-watch *reel :changes $ fn (reel prev) (render-app!)
              listen-devtools! |k dispatch!
              js/window.addEventListener |beforeunload $ fn (event) (persist-storage!)
              flipped js/setInterval 60000 persist-storage!
              ; let
                  raw $ js/localStorage.getItem (:storage-key config/site)
                when (some? raw)
                  dispatch! :hydrate-storage $ parse-cirru-edn raw
              println "|App started."
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ quote
            def mount-target $ .!querySelector js/document |.app
        |persist-storage! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn persist-storage! () (js/console.log "\"persist")
              js/localStorage.setItem (:storage-key config/site)
                format-cirru-edn $ :store @*reel
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ refresh-reel @*reel schema/store updater
                hud! "\"ok~" "\"Ok"
              hud! "\"error" build-errors
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-app! () $ render! mount-target (comp-container @*reel schema/docs) dispatch!
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.main $ :require
            respo.core :refer $ render! clear-cache!
            docs-workflow.comp.container :refer $ comp-container
            app.updater :refer $ updater
            app.schema :as schema
            reel.util :refer $ listen-devtools!
            reel.core :refer $ reel-updater refresh-reel
            reel.schema :as reel-schema
            app.config :as config
            "\"./calcit.build-errors" :default build-errors
            "\"bottom-tip" :default hud!
            docs-workflow.config :refer $ register-languages!
    |app.schema $ %{} :FileEntry
      :defs $ {}
        |docs $ %{} :CodeEntry (:doc |)
          :code $ quote
            def docs $ []
              {} (:title "\"Home") (:key :home)
                :content $ load-doc "\"home.md"
                :children $ []
              {} (:title "\"Beginner Guide") (:key :beginner-guide)
                :content $ load-doc "\"beginner-guide.md"
                :children $ []
              {} (:title "\"Guide") (:key :guide)
                :content $ load-doc "\"guide.md"
                :children $ []
                  {} (:title "\"Why Respo") (:key :why-respo)
                    :content $ load-doc "\"guide/why-respo.md"
                  {} (:title "\"Pros and Cons") (:key :pros-and-cons)
                    :content $ load-doc "\"guide/pros-and-cons.md"
                  {} (:title "\"DOM Elements") (:key :dom-elements)
                    :content $ load-doc "\"guide/dom-elements.md"
                  {} (:title "\"DOM Properties") (:key :dom-properties)
                    :content $ load-doc "\"guide/dom-properties.md"
                  {} (:title "\"DOM Events") (:key :dom-events)
                    :content $ load-doc "\"guide/dom-events.md"
                  {} (:title "\"Styles") (:key :styles)
                    :content $ load-doc "\"guide/styles.md"
                  {} (:title "\"Virtual DOM") (:key :virtual-dom)
                    :content $ load-doc "\"guide/virtual-dom.md"
                  {} (:title "\"Define Effect") (:key :defeffect)
                    :content $ load-doc "\"apis/defeffect.md"
                  {} (:title "\"List Rendering") (:key :render-list)
                    :content $ load-doc "\"guide/render-list.md"
                  {} (:title "\"Component States") (:key :component-states)
                    :content $ load-doc "\"guide/component-states.md"
                  {} (:title "\"Hot Swapping") (:key :hot-swapping)
                    :content $ load-doc "\"guide/hot-swapping.md"
                  {} (:title "\"Base Components") (:key :base-components)
                    :content $ load-doc "\"guide/base-components.md"
                  {} (:title "\"Server Rendering") (:key :server-rendering)
                    :content $ load-doc "\"guide/server-rendering.md"
                  {} (:title "\"Trouble Shooting") (:key :trouble-shooting)
                    :content $ load-doc "\"guide/trouble-shooting.md"
              {} (:title "\"API") (:key :api)
                :content $ load-doc "\"api.md"
                :children $ []
                  {} (:title "\"defcomp") (:key :defcomp)
                    :content $ load-doc "\"apis/defcomp.md"
                  {} (:title "\"div") (:key :div)
                    :content $ load-doc "\"apis/div.md"
                  {} (:title "\"<>") (:key :expand-tag)
                    :content $ load-doc "\"apis/expand-tag.md"
                  {} (:title "\"defeffect") (:key :defeffect)
                    :content $ load-doc "\"apis/defeffect.md"
                  {} (:title "\"create-element") (:key :create-element)
                    :content $ load-doc "\"apis/create-element.md"
                  {} (:title "\"render!") (:key :render!)
                    :content $ load-doc "\"apis/render_.md"
                  {} (:title "\"clear-cache!") (:key :clear-cacher!)
                    :content $ load-doc "\"apis/clear-cache_.md"
                  {} (:title "\"realize-ssr!") (:key :realize-ssr!)
                    :content $ load-doc "\"apis/realize-ssr_.md"
                  {} (:title "\"list->") (:key :list->)
                    :content $ load-doc "\"apis/list-_.md"
                  {} (:title "\">>") (:key :pick-states)
                    :content $ load-doc "\"apis/pick-states.md"
                  {} (:title "\"comp-space") (:key :comp-space)
                    :content $ load-doc "\"apis/comp-space.md"
                  {} (:title "\"comp-inspect") (:key :comp-inspect)
                    :content $ load-doc "\"apis/comp-inspect.md"
                  {} (:title "\"make-string") (:key :make-string)
                    :content $ load-doc "\"apis/make-string.md"
                  {} (:title "\"render-app") (:key :render-app)
                    :content $ load-doc "\"apis/render-app.md"
                  {} (:title "\"purify-element") (:key :purify-element)
                    :content $ load-doc "\"apis/purify-element.md"
                  {} (:title "\"mute-element") (:key :mute-element)
                    :content $ load-doc "\"apis/mute-element.md"
                  {} (:title "\"find-element-diffs") (:key :find-element-diffs)
                    :content $ load-doc "\"apis/find-element-diffs.md"
                  {} (:title "\"apply-dom-changes") (:key :apply-dom-changes)
                    :content $ load-doc "\"apis/apply-dom-changes.md"
                  {} (:title "\"activate-instance!") (:key :activate-instance)
                    :content $ load-doc "\"apis/activate-instance.md"
                  {} (:title "\"patch-instance!") (:key :patch-instance)
                    :content $ load-doc "\"apis/patch-instance.md"
              {} (:title "\"Community") (:key :community)
                :content $ load-doc "\"community.md"
        |load-doc $ %{} :CodeEntry (:doc |)
          :code $ quote
            defmacro load-doc (filename)
              read-file $ str "\"docs/" filename
        |store $ %{} :CodeEntry (:doc |)
          :code $ quote
            def store $ {}
              :states $ {}
                :cursor $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns app.schema)
    |app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn updater (store op op-id op-time)
              tag-match op
                  :states cursor s
                  update-states store cursor s
                (:hydrate-storage data) data
                _ $ do (eprintln "\"unknown op:" op) store
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.updater $ :require
            respo.cursor :refer $ update-states


{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `cr query` to inspect and `cr edit`/`cr tree` to modify. Run `cr docs agents --full` first. Manual edits must follow format and schema conventions, then run `cr edit format`.") (:package |app) (:version |0.0.1)
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!)
      :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/
      :type-slots $ {}
  :files $ {}
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (reel)
              let
                  store $ :store reel
                  states $ :states store
                div
                  {} $ :style
                    merge ui/global ui/fullscreen ui/row $ {} (:justify-content :center)
                  div
                    {} $ :style
                      {} (:max-width 800) (:width |60%)
                        :border $ str "|1px solid " (hsl 0 0 90)
                        :padding 16
                        :padding-bottom 200
                        :overflow :auto
                    comp-md-block (slurp |docs/guide.md)
                      {} (:class-name |markdown-body)
                        :highlight $ fn (code lang)
                          if (= lang |cirru) (color/generate code)
                            .-value $ .!highlight hljs code
                              js-object $ :language lang
                  when dev? $ comp-reel (>> states :reel) reel ({})
          :examples $ []
          :schema $ :: 'Dynamic
        |slurp $ %{} :CodeEntry (:doc |)
          :code $ quote
            defmacro slurp (path) (read-file path)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns app.comp.container $ :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp >> <> div button textarea span
            respo.comp.space :refer $ =<
            reel.comp.reel :refer $ comp-reel
            respo-md.comp.md :refer $ comp-md
            app.config :refer $ dev?
            respo-md.comp.md :refer $ comp-md-block
            |highlight.js :default hljs
            |cirru-color :as color
    |app.config $ %{} :FileEntry
      :defs $ {}
        |cdn? $ %{} :CodeEntry (:doc |)
          :code $ quote
            def cdn? $ cond
                exists? js/window
                , false
              (exists? js/process) (= |true js/process.env.cdn)
              :else false
          :examples $ []
          :schema $ :: 'Dynamic
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ quote
            def dev? $ = |dev (get-env |mode |release)
          :examples $ []
          :schema $ :: 'Dynamic
        |site $ %{} :CodeEntry (:doc |)
          :code $ quote
            def site $ {} (:dev-ui |http://localhost:8100/main-fonts.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main-fonts.css) (:cdn-url |http://cdn.tiye.me/cumulo-org/) (:title "|Cumulo Home Page") (:icon |http://cdn.tiye.me/logo/respo.png) (:storage-key |cumulo.org)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote (ns app.config)
    |app.main $ %{} :FileEntry
      :defs $ {}
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ quote
            defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
          :examples $ []
          :schema $ :: 'Dynamic
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op) (; println |Dispatch: op)
              reset! *reel $ reel-updater updater @*reel op
          :examples $ []
          :schema $ :: 'Dynamic
        |main! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              println "|Running mode:" $ if config/dev? |dev |release
              if ssr? $ render-app! realize-ssr!
              .!registerLanguage hljs |clojure clojure-lang
              .!registerLanguage hljs |bash bash-lang
              render-app! render!
              add-watch *reel :changes $ fn (r p) (render-app! render!)
              listen-devtools! |k dispatch!
              .!addEventListener js/window |beforeunload persist-storage!
              js/setInterval persist-storage! $ * 1000 60
              let
                  raw $ js/localStorage.getItem (:storage-key config/site)
                when (some? raw)
                  dispatch! $ :: :hydrate-storage (parse-cirru-edn raw)
              println "|App started."
          :examples $ []
          :schema $ :: 'Dynamic
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ quote
            def mount-target $ js/document.querySelector |.app
          :examples $ []
          :schema $ :: 'Dynamic
        |persist-storage! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn persist-storage! (? e)
              js/localStorage.setItem (:storage-key config/site)
                format-cirru-edn $ :store @*reel
          :examples $ []
          :schema $ :: 'Dynamic
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn reload! () (clear-cache!)
              reset! *reel $ refresh-reel @*reel schema/store updater
              println "|Code updated."
          :examples $ []
          :schema $ :: 'Dynamic
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-app! (renderer)
              renderer mount-target (comp-container @*reel) dispatch!
          :examples $ []
          :schema $ :: 'Dynamic
        |ssr? $ %{} :CodeEntry (:doc |)
          :code $ quote
            def ssr? $ some? (js/document.querySelector |meta.respo-ssr)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns app.main $ :require
            respo.core :refer $ render! clear-cache! realize-ssr!
            app.comp.container :refer $ comp-container
            app.updater :refer $ updater
            app.schema :as schema
            reel.util :refer $ listen-devtools!
            reel.core :refer $ reel-updater refresh-reel
            reel.schema :as reel-schema
            cljs.reader :refer $ read-string
            app.config :as config
            |highlight.js :default hljs
            |highlight.js/lib/languages/clojure :default clojure-lang
            |highlight.js/lib/languages/bash :default bash-lang
    |app.page $ %{} :FileEntry
      :defs $ {}
        |base-info $ %{} :CodeEntry (:doc |)
          :code $ quote
            def base-info $ {}
              :title $ :title config/site
              :icon $ :icon config/site
              :ssr nil
              :inline-html nil
          :examples $ []
          :schema $ :: 'Dynamic
        |dev-page $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dev-page () $ make-page |
              merge base-info $ {}
                :styles $ [] (<< "|http://~(get-ip!):8100/main.css") |/entry/main.css
                :scripts $ [] |/client.js
                :inline-styles $ [] (slurp |entry/github-gist.css) (slurp |node_modules/github-markdown-css/github-markdown.css)
          :examples $ []
          :schema $ :: 'Dynamic
        |main! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              println "|Running mode:" $ if config/dev? |dev |release
              if config/dev?
                spit |target/index.html $ dev-page
                spit |dist/index.html $ prod-page
          :examples $ []
          :schema $ :: 'Dynamic
        |prod-page $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn prod-page () $ let
                reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
                html-content $ make-string (comp-container reel)
                assets $ read-string (slurp |dist/assets.edn)
                cdn $ if config/cdn? (:cdn-url config/site) |
                prefix-cdn $ fn (x) (str cdn x)
              make-page html-content $ merge base-info
                {}
                  :styles $ [] (:release-ui config/site)
                  :scripts $ map ("#()" -> % :output-name prefix-cdn) assets
                  :ssr |respo-ssr
                  :inline-styles $ [] (slurp |entry/github-gist.css) (slurp |node_modules/github-markdown-css/github-markdown.css) (slurp |./entry/main.css)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns app.page $ :require
            respo.render.html :refer $ make-string
            shell-page.core :refer $ make-page spit slurp
            app.comp.container :refer $ comp-container
            app.schema :as schema
            reel.schema :as reel-schema
            cljs.reader :refer $ read-string
            app.config :as config
            cumulo-util.build :refer $ get-ip!
            clojure.core.strint :refer $ <<
    |app.schema $ %{} :FileEntry
      :defs $ {}
        |store $ %{} :CodeEntry (:doc |)
          :code $ quote
            def store $ {}
              :states $ {}
              :content |
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote (ns app.schema)
    |app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn updater (store op op-id op-time)
              tag-match op
                (:states cursor s) (update-states store cursor s)
                (:content c) (assoc store :content c)
                (:hydrate-storage d) d
                _ $ do (eprintln "|Unknown op:" op) store
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns app.updater $ :require
            respo.cursor :refer $ update-states

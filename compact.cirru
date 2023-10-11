
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version |0.0.1)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/
  :entries $ {}
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
                      {} (:max-width 800) (:width "\"60%")
                        :border $ str "\"1px solid " (hsl 0 0 90)
                        :padding 16
                        :padding-bottom 200
                        :overflow :auto
                    comp-md-block (slurp "\"docs/guide.md")
                      {} (:class-name "\"markdown-body")
                        :highlight $ fn (code lang)
                          if (= lang "\"cirru") (color/generate code)
                            .-value $ .!highlight hljs code
                              js-object $ :language lang
                  when dev? $ comp-reel (>> states :reel) reel ({})
        |slurp $ %{} :CodeEntry (:doc |)
          :code $ quote
            defmacro slurp (path) (read-file path)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.container $ :require
            [] respo-ui.core :refer $ [] hsl
            [] respo-ui.core :as ui
            [] respo.core :refer $ [] defcomp >> <> div button textarea span
            [] respo.comp.space :refer $ [] =<
            [] reel.comp.reel :refer $ [] comp-reel
            [] respo-md.comp.md :refer $ [] comp-md
            [] app.config :refer $ [] dev?
            [] respo-md.comp.md :refer $ [] comp-md-block
            [] "\"highlight.js" :default hljs
            "\"cirru-color" :as color
    |app.config $ %{} :FileEntry
      :defs $ {}
        |cdn? $ %{} :CodeEntry (:doc |)
          :code $ quote
            def cdn? $ cond
                exists? js/window
                , false
              (exists? js/process) (= "\"true" js/process.env.cdn)
              :else false
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ quote
            def dev? $ = "\"dev" (get-env "\"mode" "\"release")
        |site $ %{} :CodeEntry (:doc |)
          :code $ quote
            def site $ {} (:dev-ui "\"http://localhost:8100/main-fonts.css") (:release-ui "\"http://cdn.tiye.me/favored-fonts/main-fonts.css") (:cdn-url "\"http://cdn.tiye.me/cumulo-org/") (:title "\"Cumulo Home Page") (:icon "\"http://cdn.tiye.me/logo/respo.png") (:storage-key "\"cumulo.org")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns app.config)
    |app.main $ %{} :FileEntry
      :defs $ {}
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ quote
            defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op) (; println |Dispatch: op)
              reset! *reel $ reel-updater updater @*reel op
        |main! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
              if ssr? $ render-app! realize-ssr!
              .!registerLanguage hljs "\"clojure" clojure-lang
              .!registerLanguage hljs "\"bash" bash-lang
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
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ quote
            def mount-target $ js/document.querySelector |.app
        |persist-storage! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn persist-storage! (? e)
              js/localStorage.setItem (:storage-key config/site)
                format-cirru-edn $ :store @*reel
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn reload! () (clear-cache!)
              reset! *reel $ refresh-reel @*reel schema/store updater
              println "|Code updated."
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-app! (renderer)
              renderer mount-target (comp-container @*reel) dispatch!
        |ssr? $ %{} :CodeEntry (:doc |)
          :code $ quote
            def ssr? $ some? (js/document.querySelector |meta.respo-ssr)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.main $ :require
            [] respo.core :refer $ [] render! clear-cache! realize-ssr!
            [] app.comp.container :refer $ [] comp-container
            [] app.updater :refer $ [] updater
            [] app.schema :as schema
            [] reel.util :refer $ [] listen-devtools!
            [] reel.core :refer $ [] reel-updater refresh-reel
            [] reel.schema :as reel-schema
            [] cljs.reader :refer $ [] read-string
            [] app.config :as config
            [] "\"highlight.js" :default hljs
            [] "\"highlight.js/lib/languages/clojure" :default clojure-lang
            [] "\"highlight.js/lib/languages/bash" :default bash-lang
    |app.page $ %{} :FileEntry
      :defs $ {}
        |base-info $ %{} :CodeEntry (:doc |)
          :code $ quote
            def base-info $ {}
              :title $ :title config/site
              :icon $ :icon config/site
              :ssr nil
              :inline-html nil
        |dev-page $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dev-page () $ make-page |
              merge base-info $ {}
                :styles $ [] (<< "\"http://~(get-ip!):8100/main.css") "\"/entry/main.css"
                :scripts $ [] |/client.js
                :inline-styles $ [] (slurp "\"entry/github-gist.css") (slurp "\"node_modules/github-markdown-css/github-markdown.css")
        |main! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
              if config/dev?
                spit "\"target/index.html" $ dev-page
                spit "\"dist/index.html" $ prod-page
        |prod-page $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn prod-page () $ let
                reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
                html-content $ make-string (comp-container reel)
                assets $ read-string (slurp |dist/assets.edn)
                cdn $ if config/cdn? (:cdn-url config/site) "\""
                prefix-cdn $ fn (x) (str cdn x)
              make-page html-content $ merge base-info
                {}
                  :styles $ [] (:release-ui config/site)
                  :scripts $ map ("#()" -> % :output-name prefix-cdn) assets
                  :ssr |respo-ssr
                  :inline-styles $ [] (slurp "\"entry/github-gist.css") (slurp "\"node_modules/github-markdown-css/github-markdown.css") (slurp |./entry/main.css)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.page
            :require
              [] respo.render.html :refer $ [] make-string
              [] shell-page.core :refer $ [] make-page spit slurp
              [] app.comp.container :refer $ [] comp-container
              [] app.schema :as schema
              [] reel.schema :as reel-schema
              [] cljs.reader :refer $ [] read-string
              [] app.config :as config
              [] cumulo-util.build :refer $ [] get-ip!
            :require-macros $ [] clojure.core.strint :refer ([] <<)
    |app.schema $ %{} :FileEntry
      :defs $ {}
        |store $ %{} :CodeEntry (:doc |)
          :code $ quote
            def store $ {}
              :states $ {}
              :content |
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
                (:content c) (assoc store :content c)
                (:hydrate-storage d) d
                _ $ do (eprintln "\"Unknown op:" op) store
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.updater $ :require
            [] respo.cursor :refer $ [] update-states

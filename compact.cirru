
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/
    :version |0.0.1
  :files $ {}
    |app.comp.container $ {}
      :ns $ quote
        ns app.comp.container $ :require
          [] respo-ui.core :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.core :refer $ [] defcomp >> <> div button textarea span
          [] respo.comp.space :refer $ [] =<
          [] reel.comp.reel :refer $ [] comp-reel
          [] respo-md.comp.md :refer $ [] comp-md
          [] app.config :refer $ [] dev?
          [] respo-md.comp.md :refer $ [] comp-md-block
          [] "\"highlight.js" :as hljs
          "\"cirru-color" :as color
      :defs $ {}
        |comp-container $ quote
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
                          .-value $ hljs/highlight lang code
                when dev? $ comp-reel (>> states :reel) reel ({})
        |slurp $ quote
          defmacro slurp (path) (read-file path)
    |app.schema $ {}
      :ns $ quote (ns app.schema)
      :defs $ {}
        |store $ quote
          def store $ {}
            :states $ {}
            :content |
    |app.updater $ {}
      :ns $ quote
        ns app.updater $ :require
          [] respo.cursor :refer $ [] update-states
      :defs $ {}
        |updater $ quote
          defn updater (store op op-data op-id op-time)
            case-default
              do (println "\"Unknown op:" op) store
              :states $ update-states store op-data
              :content $ assoc store :content op-data
              :hydrate-storage op-data
    |app.main $ {}
      :ns $ quote
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
          [] "\"highlight.js" :as hljs
          [] "\"highlight.js/lib/languages/clojure" :default clojure-lang
          [] "\"highlight.js/lib/languages/bash" :default bash-lang
      :defs $ {}
        |render-app! $ quote
          defn render-app! (renderer)
            renderer mount-target (comp-container @*reel) dispatch!
        |ssr? $ quote
          def ssr? $ some? (js/document.querySelector |meta.respo-ssr)
        |persist-storage! $ quote
          defn persist-storage! (? e)
            js/localStorage.setItem (:storage-key config/site)
              format-cirru-edn $ :store @*reel
        |mount-target $ quote
          def mount-target $ .querySelector js/document |.app
        |*reel $ quote
          defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |main! $ quote
          defn main! ()
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            if ssr? $ render-app! realize-ssr!
            hljs/registerLanguage "\"clojure" clojure-lang
            hljs/registerLanguage "\"bash" bash-lang
            render-app! render!
            add-watch *reel :changes $ fn (r p) (render-app! render!)
            listen-devtools! |k dispatch!
            .!addEventListener js/window |beforeunload persist-storage!
            js/setInterval persist-storage! $ * 1000 60
            let
                raw $ js/localStorage.getItem (:storage-key config/site)
              when (some? raw)
                dispatch! :hydrate-storage $ parse-cirru-edn raw
            println "|App started."
        |dispatch! $ quote
          defn dispatch! (op op-data) (; println |Dispatch: op)
            reset! *reel $ reel-updater updater @*reel op op-data
        |reload! $ quote
          defn reload! () (clear-cache!)
            reset! *reel $ refresh-reel @*reel schema/store updater
            println "|Code updated."
    |app.page $ {}
      :ns $ quote
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
      :defs $ {}
        |base-info $ quote
          def base-info $ {}
            :title $ :title config/site
            :icon $ :icon config/site
            :ssr nil
            :inline-html nil
        |prod-page $ quote
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
        |main! $ quote
          defn main! ()
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            if config/dev?
              spit "\"target/index.html" $ dev-page
              spit "\"dist/index.html" $ prod-page
        |dev-page $ quote
          defn dev-page () $ make-page |
            merge base-info $ {}
              :styles $ [] (<< "\"http://~(get-ip!):8100/main.css") "\"/entry/main.css"
              :scripts $ [] |/client.js
              :inline-styles $ [] (slurp "\"entry/github-gist.css") (slurp "\"node_modules/github-markdown-css/github-markdown.css")
    |app.config $ {}
      :ns $ quote (ns app.config)
      :defs $ {}
        |cdn? $ quote
          def cdn? $ cond
              exists? js/window
              , false
            (exists? js/process) (= "\"true" js/process.env.cdn)
            :else false
        |dev? $ quote
          def dev? $ = "\"dev" (get-env "\"mode")
        |site $ quote
          def site $ {} (:dev-ui "\"http://localhost:8100/main-fonts.css") (:release-ui "\"http://cdn.tiye.me/favored-fonts/main-fonts.css") (:cdn-url "\"http://cdn.tiye.me/cumulo-org/") (:title "\"Cumulo Home Page") (:icon "\"http://cdn.tiye.me/logo/respo.png") (:storage-key "\"cumulo.org")

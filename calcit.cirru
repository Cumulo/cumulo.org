
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/
      :type-slots $ {}
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'HighlightResultHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait HighlightResultHost (:value 'String)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
          :schema $ :: 'Trait
        'HljsHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait HljsHost
            .register-language! $ :: 'Fn $ {}
              :args $ [] 'app.comp.container/HljsHost 'String 'Dynamic
              :return 'Unit
            .highlight $ :: 'Fn $ {}
              :args $ [] 'app.comp.container/HljsHost 'String 'JsObject
              :return 'app.comp.container/HighlightResultHost
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
            :names $ {} $ :register-language! |registerLanguage
          :schema $ :: 'Trait
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel)
            let
                store $ unsafe-coerce (get reel :store) 'app.types/Store
                states $ :states store
              div
                {} $ :style $ merge ui/global ui/fullscreen ui/row
                  {} $ :justify-content |center
                div
                  {} $ :style $ {} (:max-width 800) (:width |60%)
                    :border $ str "|1px solid " $ hsl 0 0 90
                    :padding 16
                    :padding-bottom 200
                    :overflow :auto
                  comp-md-block (slurp |docs/guide.md)
                    {} (:class-name |markdown-body)
                      :highlight $ fn (code lang)
                        if (= lang |cirru) (color/generate code)
                          .-value $ .highlight (unsafe-coerce hljs 'app.comp.container/HljsHost) code $ js-object (:language lang)
                when dev? $ comp-reel (>> states :reel) reel $ {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'slurp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defmacro slurp (path)
            read-file $ str path
          :examples $ []
          :schema $ :: 'Macro $ {}
            :capabilities $ #{} :fs-read
            :expansion $ :: 'Expr 'String
            :required $ [] $ :: 'Expr 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require
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
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'cdn? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def cdn?
            cond
                exists? js/window
                , false
              (exists? js/process) (= |true js/process.env.cdn)
              :else false
          :examples $ []
          :schema $ :: 'Dynamic
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ option:unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            %{} app.types/SiteConfig (:dev-ui |http://localhost:8100/main-fonts.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main-fonts.css) (:cdn-url |http://cdn.tiye.me/cumulo-org/) (:title "|Cumulo Home Page") (:icon |http://cdn.tiye.me/logo/respo.png) (:storage-key |cumulo.org)
          :examples $ []
          :schema $ :: 'app.types/SiteConfig
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
          :require $ app.types :refer $ SiteConfig
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *reel
            -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'Tag 'Dynamic
        'decode-store $ %{} 'CodeEntry
          :doc "|Validates open persisted data before it enters the typed application store."
          :code $ quote $ defn decode-store (data)
            let
                states $ get data :states
                content $ get data :content
              if
                and (option:some? states) (option:some? content)
                  map? $ option:unwrap states
                  string? $ option:unwrap content
                %some $ %{} app.types/Store
                  :states $ assert-type (option:unwrap states) 'Map
                  :content $ assert-type (option:unwrap content) 'String
                %none
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'Map 'Tag 'Dynamic
            :return $ :: 'Option 'app.types/Store
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op) (; println |Dispatch: op)
            reset! *reel $ reel-updater updater @*reel op
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            if ssr? $ render-app! realize-ssr!
            .register-language! (unsafe-coerce hljs 'app.comp.container/HljsHost) |clojure clojure-lang
            .register-language! (unsafe-coerce hljs 'app.comp.container/HljsHost) |bash bash-lang
            render-app! render!
            add-watch *reel :changes $ fn (r p) (render-app! render!)
            listen-devtools! |k dispatch!
            js/window.addEventListener |beforeunload $ fn (event) (persist-storage!)
            js/setInterval persist-storage! $ * 1000 60
            let
                raw $ js/localStorage.getItem $ :storage-key config/site
              when (js-present? raw)
                let
                    parsed $ parse-cirru-edn $ unsafe-coerce raw String
                  when (map? parsed)
                    let
                        restored $ decode-store $ assert-type parsed (:: 'Map 'Tag 'Dynamic)
                      when (option:some? restored)
                        dispatch! $ :: :hydrate-storage $ option:unwrap restored
            println "|App started."
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ []
            :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mount-target () (js/document.querySelector |.app)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ []
            :features $ #{} :js-ffi
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            js/localStorage.setItem (:storage-key config/site)
              format-cirru-edn $ reel-schema/read-field @*reel :store
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (clear-cache!)
            reset! *reel $ assert-type (refresh-reel @*reel schema/store updater) (:: 'Map 'Tag 'Dynamic)
            println "|Code updated."
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! (renderer)
            renderer (mount-target) (comp-container @*reel) dispatch!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] 'Dynamic 'respo.schema/Component $ :: 'Fn
                  {} (:return 'Unit)
                    :args $ [] 'Dynamic
        'ssr? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def ssr?
            js-present? $ js/document.querySelector |meta.respo-ssr
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
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
    'app.page $ %{} 'FileEntry
      :defs $ {}
        'base-info $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def base-info
            {}
              :title $ :title config/site
              :icon $ :icon config/site
              :ssr nil
              :inline-html nil
          :examples $ []
          :schema $ :: 'Dynamic
        'dev-page $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dev-page ()
            make-page | $ merge base-info $ {}
              :styles $ [] (<< "|http://~(get-ip!):8100/main.css") |/entry/main.css
              :scripts $ [] |/client.js
              :inline-styles $ [] (slurp |entry/github-gist.css)
                slurp |node_modules/github-markdown-css/github-markdown.css
          :examples $ []
          :schema $ :: 'Dynamic
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            if config/dev?
              spit |target/index.html $ dev-page
              spit |dist/index.html $ prod-page
          :examples $ []
          :schema $ :: 'Dynamic
        'prod-page $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn prod-page ()
            let
                reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
                html-content $ make-string $ comp-container reel
                assets $ read-string $ slurp |dist/assets.edn
                cdn $ if config/cdn? (:cdn-url config/site) |
                prefix-cdn $ fn (x) (str cdn x)
              make-page html-content $ merge base-info $ {}
                :styles $ [] $ :release-ui config/site
                :scripts $ map ("#()" -> % :output-name prefix-cdn) assets
                :ssr |respo-ssr
                :inline-styles $ [] (slurp |entry/github-gist.css)
                  slurp |node_modules/github-markdown-css/github-markdown.css
                  slurp |./entry/main.css
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.page
          :require
            respo.render.html :refer $ make-string
            shell-page.core :refer $ make-page spit slurp
            app.comp.container :refer $ comp-container
            app.schema :as schema
            reel.schema :as reel-schema
            cljs.reader :refer $ read-string
            app.config :as config
            cumulo-util.build :refer $ get-ip!
            clojure.core.strint :refer $ <<
    'app.schema $ %{} 'FileEntry
      :defs $ {} $ 'store
        %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            %{} app.types/Store
              :states $ {}
              :content |
          :examples $ []
          :schema $ :: 'app.types/Store
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
          :require $ app.types :refer $ Store
    'app.types $ %{} 'FileEntry
      :defs $ {}
        'SiteConfig $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct SiteConfig (:dev-ui 'String) (:release-ui 'String) (:cdn-url 'String) (:title 'String) (:icon 'String) (:storage-key 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store (:states 'Map) (:content 'String)
          :examples $ []
          :schema $ :: 'StructDef
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.types
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:states cursor s) (update-states store cursor s)
              (:content c) (assoc store :content c)
              (:hydrate-storage d) d
              _ $ do (eprintln "|Unknown op:" op) store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.types/Store)
            :args $ [] 'app.types/Store 'Dynamic 'Dynamic 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require $ respo.cursor :refer $ update-states

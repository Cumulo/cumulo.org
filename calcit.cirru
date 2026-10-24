
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |js-ffi/
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
                store $ :store reel
                states $ :states store
              div
                {} $ :style $ .merge ui/global ui/fullscreen ui/row
                  {} $ :justify-content |center
                div
                  {} $ :style $ {} (:max-width |800px) (:width |60%)
                    :border $ str "|1px solid " $ hsl 0 0 90
                    :padding |16px
                    :padding-bottom |200px
                    :overflow |auto
                  comp-md-block (slurp |docs/guide.md)
                    {} (:class-name |markdown-body)
                      :highlight $ fn (code lang)
                        hint-fn $ {} (:return 'String)
                          :args $ [] 'String 'String
                          :features $ #{} :js-ffi
                        if
                          and (string? code) (string? lang)
                          decode-map-as
                            if (= lang |cirru) (color/generate code)
                              .-value $ .highlight (js-cast hljs 'app.comp.container/HljsHost) code $ js-object (:language lang)
                            , 'String
                          raise "|Highlight expects code and language Strings"
                when dev? $ comp-typed-reel (>> states :reel) reel $ {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'reel.typed/State 'app.types/Op 'app.types/Store
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
            respo-md.comp.md :refer $ comp-md
            app.config :refer $ dev?
            respo-md.comp.md :refer $ comp-md-block
            |highlight.js :default hljs
            |cirru-color :as color
            reel.comp.reel :refer $ comp-typed-reel
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ .unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            app.types/SiteConfig :dev-ui |http://localhost:8100/main-fonts.css :release-ui |http://cdn.tiye.me/favored-fonts/main-fonts.css :cdn-url |http://cdn.tiye.me/cumulo-org/ :title "|Cumulo Home Page" :icon |http://cdn.tiye.me/logo/respo.png :storage-key |cumulo.org
          :examples $ []
          :schema $ :: 'app.types/SiteConfig
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
          :require $ app.types :refer $ SiteConfig
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel (typed/new-reel schema/store)
          :examples $ []
          :schema $ :: 'Ref $ :: 'reel.typed/State 'app.types/Op 'app.types/Store
        'decode-store $ %{} 'CodeEntry
          :doc "|Validates open persisted data before it enters the typed application store."
          :code $ quote $ defn decode-store (data)
            let
                fields $ if (struct? data)
                  struct-match data
                    app.types/Store store $ &struct:to-map store
                    _ _ data
                  , data
              match (try-decode-map-as fields 'app.types/Store)
                (:ok store) (Option :some store)
                (:err message)
                  do (eprintln "|Invalid saved store:" message) (Option :none)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Option 'app.types/Store
          :tests $ [] $ %{} 'TestEntry (:name |persisted-store-roundtrip)
            :code $ quote $ let
                stored $ app.types/Store :states
                  {} $ :flag false
                  , :content |hello
                raw $ parse-cirru-edn $ format-cirru-edn stored
              assert= (Option :some stored) (decode-store raw)
              assert= (Option :none)
                decode-store $ {}
                  :states $ {}
                  :content false
            :tags $ #{} :unit
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            let
                event $ if (enum? op) op $ raise "|Expected operation Enum"
                control $ typed/decode-control event
              reset! *reel $ match control
                (:some action) (typed/apply-control updater @*reel action)
                (:none)
                  typed/record-op updater @*reel (types/decode-op event) (generate-id!)
                    :timestamp $ shared/date-now-snapshot
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            match
              browser/storage-get $ :storage-key config/site
              (:some raw)
                let
                    parsed $ parse-cirru-edn raw
                  match (decode-store parsed)
                    (:some store)
                      dispatch! $ types/Op :hydrate-storage store
                    (:none) (raise "|Invalid saved store; original archive preserved")
              (:none) &unit
            when (ssr?) (render-app! realize-ssr!)
            .register-language! (js-cast hljs 'app.comp.container/HljsHost) |clojure clojure-lang
            .register-language! (js-cast hljs 'app.comp.container/HljsHost) |bash bash-lang
            render-app! render!
            add-watch! *reel :changes $ fn (r p)
              hint-fn $ {} (:return 'Unit)
                :args $ [] (:: 'reel.typed/State 'app.types/Op 'app.types/Store) (:: 'reel.typed/State 'app.types/Op 'app.types/Store)
              render-app! render!
            listen-devtools! |k dispatch!
            browser/set-before-unload! $ fn (event)
              hint-fn $ {} (:return 'Unit)
                :args $ [] 'js-ffi.browser/EventHost
              persist-storage!
            browser/set-interval! persist-storage! 60000
            println "|App started."
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mount-target ()
            .unwrap $ dom/query-selector |.app
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.dom/DomElement)
            :args $ []
            :features $ #{} :js-ffi
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            browser/storage-set! (:storage-key config/site)
              format-cirru-edn $ :store @*reel
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (clear-cache!)
            reset! *reel $ typed/refresh updater @*reel schema/store
            println "|Code updated."
            , &unit
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
                :args $ [] 'respo.dom/DomElement 'respo.schema/Component $ :: 'Fn
                  {} (:return 'Unit)
                    :args $ [] 'Dynamic
        'ssr? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn ssr? ()
            .some? $ dom/query-selector |meta.respo-ssr
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ []
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            respo.core :refer $ render! clear-cache! realize-ssr!
            app.comp.container :refer $ comp-container
            app.updater :refer $ updater
            app.schema :as schema
            reel.util :refer $ listen-devtools!
            app.config :as config
            |highlight.js :default hljs
            |highlight.js/lib/languages/clojure :default clojure-lang
            |highlight.js/lib/languages/bash :default bash-lang
            reel.typed :as typed
            app.types :as types
            js-ffi.browser :as browser
            js-ffi.shared :as shared
            respo.ffi.browser :as dom
    'app.schema $ %{} 'FileEntry
      :defs $ {} $ 'store
        %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            app.types/Store :states ({}) :content |
          :examples $ []
          :schema $ :: 'app.types/Store
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
          :require $ app.types :refer $ Store
    'app.types $ %{} 'FileEntry
      :defs $ {}
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op
            :states (:: 'List 'Dynamic) 'Dynamic
            :content 'String
            :hydrate-storage 'Store
          :examples $ []
          :schema $ :: 'EnumDef
        'SiteConfig $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct SiteConfig (:dev-ui 'String) (:release-ui 'String) (:cdn-url 'String) (:title 'String) (:icon 'String) (:storage-key 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store (:states 'Map) (:content 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'decode-op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-op (op)
            match op
              (:states cursor value)
                if (list? cursor) (Op :states cursor value) (raise "|Expected state cursor List")
              (:content text)
                if (string? text) (Op :content text) (raise "|Expected content String")
              (:hydrate-storage store)
                if (struct? store)
                  struct-match store
                    Store s $ Op :hydrate-storage s
                    _ _ $ raise "|Expected Store"
                  raise "|Expected Store"
              _ $ raise "|Unknown application operation"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.types/Op)
            :args $ [] 'Enum
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.types
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:states cursor s)
                assoc store :states $ decode-map-as
                  respo.cursor/update-state-tree (:states store) cursor s
                  , 'Map
              (:content c) (assoc store :content c)
              (:hydrate-storage d) d
              _ $ do (eprintln "|Unknown op:" op) store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.types/Store)
            :args $ [] 'app.types/Store 'app.types/Op 'String 'Number
          :tests $ [] $ %{} 'TestEntry (:name |typed-state-and-content)
            :code $ quote $ let
                initial $ app.types/Store :states ({}) :content |
                updated $ updater initial
                  app.types/Op :states ([] :panel |row 0) false
                  , |op-1 0
              assert=
                {} $ :panel $ {}
                  |row $ {} $ 0
                    {} $ :data false
                :states updated
              assert= | $ :content updated
              assert= |typed $ :content $ updater updated (app.types/Op :content |typed) |op-2 1
              assert= initial $ updater updated (app.types/Op :hydrate-storage initial) |op-3 2
            :tags $ #{} :unit
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require $ respo.cursor :refer $ update-states

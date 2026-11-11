
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |js-ffi/
      :type-slots $ {} $ :dispatch-op 'app.types/Op
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'HighlightResultHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait HighlightResultHost (:value 'String)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
          :schema $ quote Trait
        'HljsHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait HljsHost
            .register-language! $ Fn app.comp.container/HljsHost String
              Fn app.comp.container/HljsHost $ -> app.comp.container/LanguageDefinition
              -> Unit
            .highlight $ Fn app.comp.container/HljsHost String JsObject $ -> app.comp.container/HighlightResultHost
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
            :names $ {} $ :register-language! |registerLanguage
          :schema $ quote Trait
        'LanguageDefinition $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait LanguageDefinition (:name String)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ quote Trait
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel on-control!)
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
                        hint-fn $ Fn String String (-> String) (:features :js-ffi)
                        if
                          and (string? code) (string? lang)
                          decode-map-as
                            if (= lang |cirru) (color/generate code)
                              .-value $ .highlight (js-cast hljs 'app.comp.container/HljsHost) code $ js-object (:language lang)
                            , 'String
                          raise "|Highlight expects code and language Strings"
                if dev?
                  Some $ comp-typed-reel (>> states :reel) reel ({}) on-control!
                  , None
          :examples $ []
          :schema $ quote $ Fn (reel.typed/State app.types/Op app.types/Store)
            Fn reel.typed/Control $ -> Unit
            -> respo.schema/Component
            :features :js-ffi
        'slurp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defmacro slurp (path)
            read-file $ str path
          :examples $ []
          :schema $ quote $ Macro (Expr String)
            -> $ Expr String
            :capabilities :fs-read
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
          :schema $ quote Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            app.types/SiteConfig :dev-ui |http://localhost:8100/main-fonts.css :release-ui |http://cdn.tiye.me/favored-fonts/main-fonts.css :cdn-url |http://cdn.tiye.me/cumulo-org/ :title "|Cumulo Home Page" :icon |http://cdn.tiye.me/logo/respo.png :storage-key |cumulo.org
          :examples $ []
          :schema $ quote SiteConfig
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
          :require $ app.types :refer $ SiteConfig
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel (typed/new-reel schema/store)
          :examples $ []
          :schema $ quote $ Ref (typed/State types/Op types/Store)
        'decode-store $ %{} 'CodeEntry
          :doc "|Validates open persisted data before it enters the typed application store."
          :code $ quote $ defn decode-store (data)
            let
                fields $ if (struct? data)
                  if
                    = (&struct:get-name data) :Store
                    &struct:to-map data
                    , data
                  , data
              match (try-decode-map-as fields 'app.types/Store)
                (:ok store) (Some store)
                (:err message)
                  do (eprintln "|Invalid saved store:" message) None
          :examples $ []
          :schema $ quote $ Fn Dynamic
            -> $ Option types/Store
          :tests $ [] $ %{} 'TestEntry (:name |persisted-store-roundtrip)
            :code $ quote $ let
                stored $ app.types/Store :states
                  {} $ :flag false
                  , :content |hello
                raw $ parse-cirru-edn $ format-cirru-edn stored
              assert= (Some stored) (decode-store raw)
              assert= None $ decode-store $ {}
                :states $ {}
                :content false
            :tags $ #{} :unit
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op) (dispatch-resolved! op)
          :examples $ []
          :schema $ quote $ Fn types/Op (-> Unit)
        'dispatch-resolved! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch-resolved! (op)
            hint-fn $ Fn app.types/ResolvedOp $ -> Unit
            reset! *reel $ match op
              (reel.typed/Control control) (typed/apply-control updater @*reel control)
              (app.types/Op action)
                typed/record-op updater @*reel action (generate-id!)
                  :timestamp $ shared/date-now-snapshot
            , &unit
          :examples $ []
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
            .register-language! (js-cast hljs 'app.comp.container/HljsHost) |clojure $ fn (api)
              hint-fn $ Fn app.comp.container/HljsHost (-> app.comp.container/LanguageDefinition) (:features :js-ffi)
              let
                  factory clojure-lang
                if (fn? factory)
                  js-cast (factory api) 'app.comp.container/LanguageDefinition
                  raise "|Expected a Highlight.js clojure language factory"
            .register-language! (js-cast hljs 'app.comp.container/HljsHost) |bash $ fn (api)
              hint-fn $ Fn app.comp.container/HljsHost (-> app.comp.container/LanguageDefinition) (:features :js-ffi)
              let
                  factory bash-lang
                if (fn? factory)
                  js-cast (factory api) 'app.comp.container/LanguageDefinition
                  raise "|Expected a Highlight.js bash language factory"
            render-app! render!
            add-watch! *reel :changes $ fn (r p)
              hint-fn $ Fn (reel.typed/State app.types/Op app.types/Store) (reel.typed/State app.types/Op app.types/Store) (-> Unit)
              render-app! render!
            listen-devtools! |k on-control!
            browser/set-before-unload! $ fn (event)
              hint-fn $ Fn js-ffi.browser/EventHost $ -> Unit
              persist-storage!
            browser/set-interval! persist-storage! 60000
            println "|App started."
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mount-target ()
            .unwrap $ dom/query-selector |.app
          :examples $ []
          :schema $ quote $ Fn (-> respo.dom/DomElement) (:features :js-ffi)
        'on-control! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-control! (control) (dispatch-resolved! control)
          :examples $ []
          :schema $ quote $ Fn typed/Control (-> Unit)
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            browser/storage-set! (:storage-key config/site)
              format-cirru-edn $ :store @*reel
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (clear-cache!)
            reset! *reel $ typed/refresh updater @*reel schema/store
            println "|Code updated."
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! (renderer)
            with-memo-frame $ fn () $ renderer (mount-target) (comp-container @*reel on-control!) dispatch!
          :examples $ []
          :schema $ quote $ Fn
            Fn respo.dom/DomElement respo.schema/Component
              Fn types/Op $ -> Unit
              -> Unit
            -> Unit
            :features :js-ffi
        'ssr? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn ssr? ()
            .some? $ dom/query-selector |meta.respo-ssr
          :examples $ []
          :schema $ quote $ Fn (-> Bool) (:features :js-ffi)
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
            respo.memo :refer $ with-memo-frame
    'app.schema $ %{} 'FileEntry
      :defs $ {} $ 'store
        %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            app.types/Store :states ({}) :content |
          :examples $ []
          :schema $ quote Store
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
          :require $ app.types :refer $ Store
    'app.types $ %{} 'FileEntry
      :defs $ {}
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op
            :states (List respo.schema/CoordKey) Dynamic
            :content String
            :hydrate-storage Store
          :examples $ []
          :schema $ quote EnumDef
        'ResolvedOp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion ResolvedOp Op reel.typed/Control
          :examples $ []
          :schema $ quote UnionDef
        'SiteConfig $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct SiteConfig (:dev-ui String) (:release-ui String) (:cdn-url String) (:title String) (:icon String) (:storage-key String)
          :examples $ []
          :schema $ quote StructDef
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store (:states Map) (:content String)
          :examples $ []
          :schema $ quote StructDef
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
          :schema $ quote $ Fn app.types/Store app.types/Op String Number (-> app.types/Store)
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


(ns cumulo-org.comp.content
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo.alias :refer [create-comp div span]]
            [respo.comp.space :refer [comp-space]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.text :refer [comp-text]]
            [respo-markdown.comp.md-article :refer [comp-md-article]]
            [cumulo-org.doc :as doc]))

(def style-container {:padding 32})

(def comp-content
  (create-comp
   :content
   (fn [router]
     (fn [state mutate!]
       (div
        {:style (merge ui/flex style-container)}
        (comp-md-article
         (case (:name router)
           "dev.html" doc/index
           "home" doc/index
           "index.html" doc/index
           "about.html" doc/about
           "404")
         {}))))))

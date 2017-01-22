
(ns cumulo-org.comp.container
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo.alias :refer [create-comp div span]]
            [respo.comp.space :refer [comp-space]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.text :refer [comp-text]]
            [cumulo-org.comp.sidebar :refer [comp-sidebar]]
            [cumulo-org.comp.content :refer [comp-content]]))

(def style-container {:align-items :stretch})

(def comp-container
  (create-comp
   :container
   (fn [store]
     (fn [state mutate!]
       (div
        {:style (merge ui/global ui/fullscreen ui/row style-container)}
        (comp-sidebar (:router store))
        (comp-content (:router store)))))))

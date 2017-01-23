
(ns cumulo-org.comp.sidebar
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo.alias :refer [create-comp div span]]
            [respo.comp.space :refer [comp-space]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.text :refer [comp-text]]))

(defn on-home [e dispatch!] (dispatch! :router/set "/"))

(def style-link {:font-size 20, :font-weight 300, :cursor :pointer, :padding "0 16px"})

(defn render-link [text path]
  (div
   {:style style-link, :event {:click (fn [e dispatch!] (dispatch! :router/set path))}}
   (comp-text text nil)))

(def style-logo
  {:font-size 40,
   :font-weight 100,
   :cursor :pointer,
   :padding "0 16px",
   :font-family "Josefin Sans"})

(def style-sidebar {:width "24%"})

(def comp-sidebar
  (create-comp
   :sidebar
   (fn [router]
     (fn [state mutate!]
       (div
        {:style style-sidebar}
        (div {:style style-logo, :event {:click on-home}} (comp-text "Cumulo" nil))
        (render-link "About" "about.html")
        (render-link "Workflow" "workflow.html"))))))

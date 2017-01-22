
(ns cumulo-org.comp.sidebar
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo.alias :refer [create-comp div span]]
            [respo.comp.space :refer [comp-space]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.text :refer [comp-text]]))

(defn on-home [e dispatch!] (dispatch! :router/set "/"))

(defn on-about [e dispatch!] (dispatch! :router/set "/about.html"))

(def style-logo
  {:font-size 40,
   :font-weight 100,
   :cursor :pointer,
   :padding "0 16px",
   :font-family "Josefin Sans"})

(def style-sidebar {:width "24%"})

(def style-link {:font-size 20, :font-weight 300, :cursor :pointer, :padding "0 16px"})

(def comp-sidebar
  (create-comp
   :sidebar
   (fn [router]
     (fn [state mutate!]
       (div
        {:style style-sidebar}
        (div {:style style-logo, :event {:click on-home}} (comp-text "Cumulo" nil))
        (div {:style style-link, :event {:click on-about}} (comp-text "About" nil)))))))

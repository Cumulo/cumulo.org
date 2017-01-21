
(ns doc.core
  (:require [clojure.string :as string]))

(def gaze (js/require "gaze"))
(def fs (js/require "fs"))
(def path (js/require "path"))

(def doc-path "polyfill/cumulo_org/doc.cljs")

(defonce files-ref (atom {}))

(defn read-files! []
  (let [doc-files (fs.readdirSync "docs")]
    (reset! files-ref
      (->> doc-files
        (map (fn [file-name]
          [file-name (fs.readFileSync (path.join "docs" file-name) "utf8")]))
        (into {})))))

(defn gather-content [files-map]
  (str
    "\n(ns cumulo-org.doc)\n\n"
    (string/join "\n\n"
      (map (fn [entry]
        (let [[file-name content] entry]
          (str "(def " (path.basename file-name ".md") " " (pr-str content) ")")))
        @files-ref))
    "\n"))

(defn write-file! []
  (fs.writeFileSync doc-path (gather-content @files-ref))
  (println "File wrote!"))

(defn watch! []
  (gaze "docs/*" (fn [err watcher]
    (.on watcher "changed" (fn [file-path]
      (swap! files-ref assoc (path.basename file-path)
        (fs.readFileSync file-path "utf8"))
      (write-file!)))))
  (println "Start watching."))

(defn -main! []
  (read-files!)
  (write-file!)
  (watch!))

(-main!)

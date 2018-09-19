
# Cumulo: a project template for realtime apps

### Usage

```bash
git clone git@github.com:Cumulo/cumulo-workflow.git app
cd app/
yarn
yarn watch

# editor
calcit-editor
```

Find out more on https://github.com/Cumulo/

### Model part

`recollect.macros/deftwig` can be used to declare data pieces(called twigs), which is similar to React components:

```clojure
(deftwig
 twig-container
 (db session records)
 (let [logged-in? (some? (:user-id session))
       router (:router session)
       base-data {:logged-in? logged-in?, :session session, :reel-length (count records)}]
   (merge
    base-data
    (if logged-in?
      {:user (twig-user (get-in db [:users (:user-id session)])),
       :router (assoc
                router
                :data
                (case (:name router)
                  :home (:pages db)
                  :profile (twig-members (:sessions db) (:users db))
                  {})),
       :count (count (:sessions db)),
       :color (color/randomColor)}
      nil))))
```

Twigs can be composed too.

### Syncing

Data is synced to clients with a simple diff/patching algorithm. It's not very fast but tested enough for tiny realtime apps.

### Rendering

On client side, [Respo](http://respo.site) is used to maintain DOM elements.

### Examples

Several projects created with Cumulo can be found on https://github.com/TopixIM/


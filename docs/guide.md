
# Cumulo: a project template for realtime apps

### Calcit projects

For the maintained Calcit template, see [calcium-workflow](https://github.com/Cumulo/calcium-workflow).
Follow that repository's README and `deps.cirru` for its exact CLI version and separate frontend/server commands;
upgrading this documentation site does not upgrade or deploy that template or any application server.

### Historical ClojureScript template

The following commands belong to the older Shadow CLJS template, not to Calcit 0.30.1:

```bash
git clone git@github.com:Cumulo/cumulo-workflow.git app
cd app/
yarn
yarn watch
```

Find out more on https://github.com/Cumulo/

### Model part

_TODO_

The earlier [cumulo-workflow.calcit](https://github.com/Cumulo/cumulo-workflow.calcit) repository is archived;
it is a historical reference, not the current template.

### Syncing

Data is synced to clients with a simple diff/patching algorithm. It's not very fast but tested enough for tiny realtime apps.

### Rendering

On client side, [Respo](http://respo.site) is used to maintain DOM elements.

### Examples

Several projects created with Cumulo can be found on https://github.com/TopixIM/


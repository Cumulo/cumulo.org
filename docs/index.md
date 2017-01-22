
### What is Cumulo?

Cumulo is inspired by React's DOM Diff solution. Web programming is about syncing data across a server and lots of clients, even among servers. React is using Diff algorithm to patch the slow DOM by spending time do diffing, Cumulo is trying to patch the slow Network by spend time diffing.

![](diff.png)

Cumulo is like MVC pattern in React, except for putting the Store on server as an in-memory database. Currently Cumulo does not come with a database solution, as an experimental project. We may work on this issue later.

![](syncing.png)

In order to diff, the server need to render all the data that clients may need. In Cumulo, it's called **DataView**, which may be immutable JavaScript Objects, or perhaps ClojureScript persistent data structure in the future. And there might be multiple layers serving the purpose of caching.

![](caching.png)

Waiting for server responses is slow in current time. Cumulo prepared a **Recoreder** of pending actions for such cases, by learning from distributed systems. The page's Model is computed from Store and pending actions, so [Store is not the Model, initial state and actions is](https://medium.com/cumulo-project/in-flux-and-ssot-store-is-not-the-truth-actions-is-8094dcfcdb12)!

![](recorder.png)

### Status of Cumulo

Now Cumulo is an experimental project. I'm not working on it fulltime. Here's roughly the plan:

* Immutable JavaScript -- Ready
* ClojureScript persistent data structure -- Not started
* Cumulo implementation -- Initial steps
* Demo apps -- Initial steps

If you are interested in Cumulo, we may discuss on [Twitter](https://twitter.com/jiyinyiyong) and [Gitter](https://gitter.im/Cumulo/cumulo.org).


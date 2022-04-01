For more details please read <https://github.com/Respo/ssr-stages>

### Rendering assumptions

Before talking about **S**erver **S**ide **R**endering(SSR), you should know about how Respo mounts and rerenders. There's a Atom called `*global-element` which represents the virtual DOM of currently rendered HTML content on the page:

```cirru
defatom *global-element nil
```

And every time you call `render!`, it checks if old virtual DOM exists. If exists, it will do patching with `rerender-app!` rather than mounting:

```
defn render! (target markup dispatch!)
  if (some? @*global-element)
    rerender-app! target markup dispatch!
    mount-app! target markup dispatch!
```

### What is SSR in Respo?

So SSR is there's already HTML in `<div class="app">{"some HTML existed"}</div>` and Respo need to patch the DOM in the first screen. And in order to generate the patches, we must prepare an old virtual DOM so that we can call diff function.

And note that the HTML transferred over the network does not bind events, and we need to bind them on client side. Internally there's `mute-element` function to remove events from virtual DOM.

### `realize-ssr!` solution

How to prepare that virtual DOM? You have to render that by yourself. Since Respo components are like functions, it's not hard. Read code below:

```cirru
defatom *store $ {}

def mount-target (js/document.querySelector "|.app")

defn -main ()
  if server-rendered?
    realize-ssr! target
      render-element (comp-container @*store)
      , dispatch!
  render-app!
  add-watch *store :changes render-app!
```

It can be divided into several steps:

- call `(comp-container store)` to create component
- call `(render-element component)` to render component to virtual DOM
- call `(realize-ssr! target element dispatch!)` to reset `*global-element` we mentioned above
- then call `render!` with `(render-app!)`

In `realize-ssr!` we also setup the event listener, and all listeners are finished registering after `render!` is called, i.e. DOM patching finished.

### Report bugs

This feature has not beed well tested in real world yet. Submit bugs at https://github.com/Respo/respo/issues

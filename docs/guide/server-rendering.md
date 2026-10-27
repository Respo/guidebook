## Server rendering

The current public HTML output API is `respo.render.html/make-string`. It
purifies a component tree and serializes HTML without live event handlers.
`respo.core/realize-ssr!` adopts existing server-rendered DOM on the client before
the first ordinary `render!` call. These APIs are not a second application store.

For an SSR integration:

1. Build the server component tree from a checked Store and render it with
   `respo.render.html/make-string`. Include the matching stylesheet resources.
2. On the client, recover and validate the same initial data before building
   the matching component tree. Resolve an actual `respo.dom/DomElement` mount
   target; a missing selector result is not a valid SSR target.
3. Pass that mount target, the **Component** and the application's single-op
   Unit-returning dispatcher to `respo.core/realize-ssr!`. It compares existing
   DOM, adopts the tree, attaches handlers and mounts effects.
4. Continue through the normal `respo.core/render!` path for later updates.
   `render!` checks whether a previous component exists and mounts or patches
   accordingly. Do not call `realize-ssr!` repeatedly as a refresh operation.

Do not copy the historical `render-element`, mutable `*global-element`, nil
Atom, direct `js/document.querySelector`, or unmarked `add-watch` implementation
recipes. The retained renderer state is owned by Respo. Current callers use
published DOM contracts and `defref` / explicit watch effects for their own
state; they do not reset Respo's internal Ref to impersonate an adopted tree.

This guidebook remains a client-rendered SPA plus a separate static mdBook. It
does not enable or runtime-test an SSR application in this migration. SSR
requires a server/client data and CSS pipeline; producing an HTML string alone
does not establish correct hydration or event delivery. Inspect the paired
release's actual contracts before integrating:

```sh
calcit .calcit/modules/respo.calcit/calcit.cirru query def respo.render.html/make-string
calcit .calcit/modules/respo.calcit/calcit.cirru query schema respo.core/realize-ssr!
calcit .calcit/modules/respo.calcit/calcit.cirru query schema respo.core/render!
```

Run these queries against the installed Respo Snapshot (or include dependency
namespaces through the CLI). Server and client must use the same paired module
graph. Report reproducible SSR behavior problems in the maintained
[Respo issue tracker](https://github.com/Respo/respo.calcit/issues).

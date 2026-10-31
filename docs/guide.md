# Guide: Calcit 0.32.1

This site pairs formal Calcit CLI / `@calcit/procs` **0.32.1** with released Docs Workflow **0.0.40**, Respo **0.17.1** and JS-FFI **0.2.9**. The published UI graph still includes Reel **0.7.0-alpha.5**, Markdown **0.5.0-alpha.5** and Router **0.9.0-alpha.4**; it is not an entirely stable-release graph. Install it using Caps strict and keep runtime and CLI paired. Use `calcit.cirru` for source and `deps.cirru` for module versions; do not restore `compact.cirru` or `package.cirru`.

For a new application, start with the maintained
[Respo template](https://github.com/Respo/respo-calcit-workflow). Check its own
versions before copying code: upgrading this site does not upgrade other apps.

## State and effects

Use `defref` / `ref` for retained mutable references, and `add-watch!` /
`remove-watch!` for effectful subscriptions. The historical `defatom`, `atom` and
unmarked watch names have been removed from the current language. Do not hide a missing type
relationship with `unsafe-coerce` merely to pass a check.

A native counter illustrates an explicit effectful function contract:

```cirru
ns example.counter

defref *count 0

defn increment! ()
  hint-fn $ Fn $ -> Unit
  reset! *count $ inc @*count
  , &unit
```

For browsers, keep DOM ownership in Respo's `respo.dom` contracts. Read host
strings and numbers through published JS-FFI adapters; an unchecked cast does
not prove a JavaScript value has a Calcit schema. Keep JavaScript `bottom-tip`
`hud!` calls in development reload handlers so errors remain visible on-page.

## Event callbacks and application operations

`respo.core/>>` selects a state branch and carries its cursor. A Respo event
handler receives `(event, dispatch!)`; the dispatch function accepts exactly
one value of the entry's `dispatch-op` type and returns Unit. For state changes,
package the cursor and new state in one application operation, then validate
its fields at the app boundary. A two-argument handler or custom
`on-select(path, d!)` callback does not make `d!` a two-argument dispatcher.

Define an application Op enum and validate incoming state cursors/payloads
before constructing it. With typed Reel, retain `State<Op, Store>` in a Ref,
handle `typed/decode-control` separately, and use `typed/record-op` for domain
operations. `Date.now` is a host call, not a numeric constant; JS-FFI's
`date-now-snapshot` exposes a checked `:timestamp` value.

This app uses Docs Workflow's **DocNode, Store and Op**, plus its
updater. A second nominally distinct Store with identical fields is not
interchangeable with that module's Store.

## Absence and genuine boundaries

Calcit's `get` returns an Option. Match `:some` / `:none`, or use `.unwrap-or`
with a meaningful default; use `.unwrap` only for a real presence invariant.
Do not insert arbitrary empty collections merely to silence checks. State
trees and browser event Maps remain heterogeneous boundaries: validate the
fields consumed rather than asserting every event is an unrelated Struct.

## Verification and older chapters

Application source is checked with all-definitions analysis, public namespace
checks, full strict diagnostics, and zero deprecated/dynamic-method findings in
CI. Both SPA and mdBook are built. These checks do **not** execute every Markdown
fragment or certify browser/WebSocket application behavior.

The Beginner Guide, older implementation discussions under Guide, and several API
chapters retain historical design notes. Their
old macro expansions, direct JavaScript access and operation syntax are not
copy-ready 0.32.1 code. Consult the paired published module's `calcit query def`
and `query schema` views and the maintained template. Historical examples need
section-by-section migration, not mechanical renaming without contract checks.

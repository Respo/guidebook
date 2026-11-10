# Guide: Calcit 0.40.0

Use the published Calcit CLI and `@calcit/procs` **0.40.0** together. This site
uses Docs Workflow **0.1.0**, Respo **0.19.5**, Respo UI **0.15.2**, Reel
**0.11.0**, Markdown **0.8.2**, Router **0.12.2**, and JS-FFI **0.2.13**.
Docs Workflow also brings in Alerts **0.14.3**. Install with Caps strict and run
`caps verify --toolchain` to check the version pairing. The source and module
versions live in `calcit.cirru` and `deps.cirru`.

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
validate any raw cursor and payload where they enter the app, then construct
and dispatch one application operation. A two-argument handler or custom
`on-select(path, d!)` callback does not make `d!` a two-argument dispatcher.

Define an application Op enum and validate incoming state cursors/payloads
before constructing it. With typed Reel, retain `State<Op, Store>` in a Ref,
send `reel.typed/Control` to the separate `on-control!` callback, and use
`typed/record-op` for application operations. `Date.now` is a host call, not a numeric constant; JS-FFI's
`date-now-snapshot` exposes a checked `:timestamp` value.

This app uses Docs Workflow's **DocNode, Store and Op**, plus its
updater. A second nominally distinct Store with identical fields is not
interchangeable with that module's Store.

## Absence and genuine boundaries

Calcit's `get` returns an Option. Match `:some` / `:none`, or use `.unwrap-or`
with a meaningful default; use `.unwrap` only for a real presence invariant.
Do not insert arbitrary empty collections merely to silence checks. State
trees can hold heterogeneous values. Browser callbacks use `RespoEvent`, and
widget code validates the host fields it consumes.

## Verification and older chapters

Application source is checked with all-definitions analysis, public namespace
checks, full strict diagnostics, and zero deprecated/dynamic-method findings in
CI. Both SPA and mdBook are built. These checks do **not** execute every Markdown
fragment or certify browser/WebSocket application behavior.

The Beginner Guide, older implementation discussions under Guide, and several API
chapters retain historical design notes. Their
old macro expansions, direct JavaScript access and operation syntax are not
copy-ready 0.40.0 code. Consult the paired published module's `calcit query def`
and `query schema` views and the maintained template. Historical examples need
section-by-section migration, not mechanical renaming without contract checks.

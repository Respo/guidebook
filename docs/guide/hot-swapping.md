## Hot swapping

Use retained `defref` values and explicit watch effects. The current app keeps
its typed Reel in `app.main/*reel`; its value is immutable, while the reference
is mutable. `defatom`, `atom`, `add-watch` and `remove-watch` are retired names.
Do not add another reference around the initial store.

This is the initialization expression from this site's checked source:

```cirru
defref *reel $ typed/new-reel schema/store
```

It belongs with the published `reel.typed/State<Op, Store>` schema attached to
`app.main/*reel`. An isolated excerpt does not carry that schema or its imports;
inspect the actual definition with `calcit query def 'app.main/*reel'` before reuse.

The successful branch of this app's `reload!` uses the following sequence:

```cirru
remove-watch! *reel :changes
clear-cache!
add-watch! *reel :changes $ fn (reel prev)
  render-app!
reset! *reel $ typed/refresh updater @*reel schema/store
```

Clear the component cache before refreshing Reel. Register the new callback
before that refresh so its state change renders the new code. Watch callbacks
receive both the new and previous values; they are not the application dispatch
callback. Replacing the named watch avoids retaining an obsolete callback after
reload.

Keep the original error branch and JavaScript `bottom-tip` `hud!` calls: build
errors must remain visible on the page. A failed build must not refresh the
running state as though it were valid. `hud!` is a host UI function, not a
replacement for `raise` or a language primitive.

Archive loading is a separate boundary. This app currently writes an archive
but does not restore it at startup; this migration does not enable restoration.
If adding restoration, decode the wire value into the local Store before
registering automatic saves. A parse failure must not overwrite the original
archive with a default store.

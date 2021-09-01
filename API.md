## Respo API

### User APIs

| Namespace            | Function                           |
| -------------------- | ---------------------------------- |
| `respo.core`         | [`defcomp`](defcomp)               |
|                      | [`div`](div)                       |
|                      | [`<>`](expand-tag)                 |
|                      | [`defeffect`](defeffect)           |
|                      | [`defplugin`](defplugin)           |
|                      | [`create-element`](create-element) |
|                      | [`render!`](render_)               |
|                      | [`clear-cache!`](clear-cache_)     |
|                      | [`realize-ssr!`](realize-ssr_)     |
|                      | [`list->`](list-_)                 |
|                      | [`>>`](pick-states)                |
| `respo.comp.space`   | [`comp-space` or `=<`](comp-space) |
| `respo.comp.inspect` | [`comp-inspect`](comp-inspect)     |
| `respo.render.html`  | [`make-string`](make-string)       |

### Lower level APIs

Normally you don't need low level APIs, and the basic APIs are enough for building a apps.

I documented the APIs that can be useful.
It's possible to discover new features we have't noticed yet.

| Namespace                 | Function                                   |
| ------------------------- | ------------------------------------------ |
| `respo.render.expand`     | [`render-app`](render-app)                 |
| `respo.util.format`       | [`purify-element`](purify-element)         |
|                           | [`mute-element`](mute-element)             |
| `respo.util.list`         | [`map-val`](#map-val)                      |
|                           | [`map-with-idx`](#map-with-idx)            |
| `respo.render.diff`       | [`find-element-diffs`](find-element-diffs) |
| `respo.render.patch`      | [`apply-dom-changes`](apply-dom-changes)   |
| `respo.controller.client` | [`activate-instance!`](activate-instance_) |
|                           | [`patch-instance!`](patch-instance_)       |

### APIs

##### map-with-idx

```cirru
respo.util.list/map-with-idx identity ([] :a :b)
; [] ([] 0 :a) ([] 1 :b)
```

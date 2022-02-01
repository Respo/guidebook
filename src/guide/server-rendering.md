## Server rendering

Virtual DOM can be rendered on a server, use it like in JavaScript.

Find out in the section: [SSR](../guide/SSR.md).

[`make-string`](../apis/make-string.md) is the function to render HTML. [`realize-ssr!`](../apis/realize-ssr_.md) is also useful to make first screen look smoother, make sure it's called before `render!`.

Notice that when rendering on server, events are not bound,
internally we use [`mute-element`](../apis/mute-element.md) to remove events before rendering.
Without [`realize-ssr!`](../apis/realize-ssr_.md), [`render!`](../apis/render_.md) function will remove existing DOM and mount the whole tree.

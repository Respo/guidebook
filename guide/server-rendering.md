## Server rendering

Virtual DOM can be rendered on a server, use it like in JavaScript.

Find out in the section: [SSR](SSR).

[`make-string`](make-string) is the function to render HTML. [`realize-ssr!`](realize-ssr_) is also useful to make first screen look smoother, make sure it's called before `render!`.

Notice that when rendering on server, events are not bound,
internally we use [`mute-element`](mute-element) to remove events before rendering.
Without [`realize-ssr!`](realize-ssr_), [`render!`](render_) function will remove existing DOM and mount the whole tree.

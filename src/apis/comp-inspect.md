## `comp-inspect`

This component is similiar to `comp-text`, it shows data in string with styles.
The differeces is, `x` can be anything type(formatted with `pr-str`):

```
comp-inspect "|a tip" x
  {}
    :color "|red"
```

This component also comes with special styles to show it in an absolute position.
When clicked, it will print data with `(to-js-data x)`.

Disable component in production:

```
comment (comp-inspect x nil)
```

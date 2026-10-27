## Component States

A component state branch is an open Map with a `:cursor` path and optional
`:data`. The state value can differ between widgets. Keep that heterogeneous
boundary explicit; decode the fields a widget consumes before using them as a
business model. A missing Map key returns `Option :none`, not an implicit nil.

`respo.core/>>` selects a branch and extends its cursor. This small example uses
Tag keys, matching this documentation app's checked `List<Tag>` operation path:

```cirru
let
    states $ {} (:cursor $ []) (:task $ {} (:data |Draft))
    branch $ respo.core/>> states :task
  assert= (Option :some $ [] :task) (get branch :cursor)
  assert= (Option :some |Draft) (get branch :data)
```

A missing branch starts with an empty cursor-bearing Map. Do not replace a
present false, zero or empty string state with an arbitrary default. Match the
Option returned by `get`; decode a present value according to the widget's
actual state shape.

A Respo event handler receives two arguments: the event Map and the application
dispatch function. That dispatch function accepts **one** entry `dispatch-op`
value and returns Unit. Two handler arguments do not imply a two-argument
state dispatcher. Wrap the cursor and new state in the app's single operation:

```cirru
fn (event d!)
  d! $ :: :states cursor new-state
  , &unit
```

This is a callback fragment in a context that already provides `cursor` and
`new-state`, not a standalone program. This site's application boundary checks
the raw Enum and payload before constructing the published nominal Op.
A custom callback such as `on-select(path, d!)` can also have two arguments;
that does not change the arity of the `d!` value passed to it.

For the tree update itself, use the current three-argument helper:

```cirru
let
    updated $ respo.cursor/update-state-tree ({}) ([] :task) |Edited
  assert= ({} $ :task $ {} (:data |Edited)) updated
```

`update-state-tree` and `respo.cursor/update-states` expose open boundaries;
`update-states` also takes three arguments: store, cursor, new state. Their
results are not automatically proof of a nominal Store. This app's published
Docs Workflow updater checks the updated state Map before assigning it into
Store. Its app dispatcher validates cursors and hydrated stores before building
`docs-workflow.schema/Op`, then typed Reel records that operation.

Use the actual checked `app.main/dispatch!` and `docs-workflow.updater/updater`
definitions as integration references. The removed `case-default` example and
the old two-argument `update-states` call are not current alternatives.

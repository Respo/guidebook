## Component States

A component state branch is an open Map with a `:cursor` path and optional
`:data`. The state value can differ between widgets. Keep that heterogeneous
boundary explicit; decode the fields a widget consumes before using them as a
business model. A missing Map key returns `Option :none`, not an implicit nil.

`respo.core/>>` selects a branch and extends its cursor. This small example uses
Tag keys. The published operation takes a `List<respo.schema/CoordKey>`.

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

A Respo event handler receives a `respo.schema/RespoEvent` and a dispatcher.
The dispatcher accepts one operation of the entry's `dispatch-op` type and
returns Unit. In this site, that operation is `docs-workflow.schema/Op`.
A custom callback such as `on-select(path, d!)` has two parameters, while each
call to `d!` still passes a single operation.

Validate external data where it enters the app. For example, a widget that
stores a draft string can check an imported cursor and draft before
constructing the operation:

```cirru
let
    raw-cursor $ parse-cirru-edn "|[] :task"
    raw-draft $ parse-cirru-edn "|do |Edited"
    cursor $ decode-map-as raw-cursor $ List respo.schema/CoordKey
    draft $ decode-map-as raw-draft 'String
    operation $ docs-workflow.schema/Op :states cursor draft
  assert= (docs-workflow.schema/Op :states ([] :task) |Edited) operation
```

Pass the validated operation to `d!` from the event handler. Use the
widget's own schema for its payload, such as a named Struct when it stores
several fields. To restore a saved store, decode the raw data against
`docs-workflow.schema/Store` before constructing `Op :hydrate-storage`.

For the tree update itself, use the current three-argument helper:

```cirru
let
    updated $ respo.cursor/update-state-tree ({}) ([] :task) |Edited
  assert= ({} $ :task $ {} (:data |Edited)) updated
```

`update-state-tree` and `respo.cursor/update-states` expose open boundaries;
`update-states` also takes three arguments: store, cursor, new state. Their
results require a check before assignment to a nominal Store. This site's
`app.main/dispatch!` takes an already constructed `Op` and records it in typed
Reel. The published `docs-workflow.updater/updater` checks the resulting state
Map before assigning it into Store. That Map check allows heterogeneous
payloads, so widget-specific validation belongs at the input boundary.
Reel controls enter through the separate `on-control!` callback.

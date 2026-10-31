## DOM events

当前 Respo `respo.schema/EventHandler` 接收两个参数：不可变的 `Map<Tag,Dynamic>` 事件数据与应用的 dispatch 函数。dispatch 只接收一个 entry `dispatch-op` 类型的值并返回 Unit；不要沿用旧 `(op, op-data)` 两参数调用方式。

事件转换以已发布 `respo.util.format/event->edn` 为准，不要复制旧版 `case-default` 与直接 JavaScript 属性读取的实现。常见 click、input/change、键盘事件的 `:type` 为对应 Tag；不认识的事件类型仍可能是 String。input/change 提供 `:value`、`:checked`，键盘字段由当前库填充，不能假定所有事件都有相同字段。

Map 读取返回 Option。输入框应用预期文本时，可在这个真实开放边界收敛为 `Option<String>`：

```cirru
let
    input-text $ fn (event)
      hint-fn $ Fn (Map Tag Dynamic)
        -> $ Option String
      decode-map-as (get event :value)
        quote $ Option String
  assert= |hello $ .unwrap $ input-text
    {} $ :value |hello
  assert= true $ .none? $ input-text ({})
```

缺失 `:value` 返回 none；已有空字符串仍是 some，已有非 String 值会被 decoder 拒绝，不以任意空字符串隐藏错误。此原生示例验证事件数据读取，不模拟或证明浏览器事件的完整绑定与传播行为。

原始 DOM event 位于 `:event`，兼容字段 `:original-event` 也保留。它是宿主对象，整个事件 Map 不是 DOM event；浏览器属性读取应沿用 Respo/JS-FFI 的实际宿主合同，不能把 Map 强转为另一类型。事件绑定与传播策略也应查看实际库实现，不从这段数据示例推断。

在项目中核对当前版本的 source of truth：

```bash
calcit query def respo.schema/EventHandler
calcit query def 'respo.util.format/event->edn'
```

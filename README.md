
# Respo Guidebook

使用者注意：本轮将站点 Calcit CLI / `@calcit/procs` 从 **0.31.0** 配对正式 **0.32.1**，采用已发布 Docs Workflow **0.0.40**、Respo **0.17.1**、UI **0.9.0** 和 JS-FFI **0.2.9**。Reel **0.7.0-alpha.5**、Markdown **0.5.0-alpha.5**、Router **0.9.0-alpha.4** 仍为已发布 alpha，不声称完整依赖图均为正式版。升级后重新安装完整精确依赖图并刷新页面，UI 样式可能变化。源码仍仅使用 `calcit.cirru`，依赖以 `deps.cirru` 为准，不恢复 compact/package.cirru。

Guide 说明当前 Ref/watch、Option、event handler/app dispatch、名义 Store 和宿主边界。
旧 Beginner Guide、部分 Guide 实现说明和 API 仍有历史片段，尚未全部迁移或独立执行；站点构建通过不代表
所有旧示例都可用于当前版本。新应用以维护中的模板和已发布接口为准。

## 开发与验收

Node 24、Yarn 4.18.0、正式 0.32.1 CLI：

```bash
corepack enable
caps --strict --ci
yarn install --immutable
caps verify --toolchain
calcit --check-only --all-defs
calcit fix --workflow strict --verify
yarn dev
```

`yarn build` 默认使用相对资源路径，`VITE_BASE_URL` 可指定前端 CDN 根路径。CI
检查所有定义、公开 namespace、完整 strict、旧调用与动态方法，构建 SPA/mdBook
并保存 PR 预览。当前 Guide 计数器与 DOM Events 数据解码示例由官方代码块检查覆盖；原项目没有定义附带测试，零个测试不等于业务覆盖；浏览器导航、
搜索与刷新需另行验收。页面 `hud!` 错误展示保留。

默认 entry 的 dispatch-op 显式绑定原有 renderer 的 Dynamic 宿主入口；
非 Enum 输入仍被拒绝，业务 payload 仍受检后构造 Docs Workflow 的具名 Op。
14 个定义的 schema 与 Store/Op 合同保持；官方 formatter 转换 renderer 的一处类型提示，业务表达式不变，不以关闭证明审计或增加断言绕过 strict。

## 部署边界

生产 SPA 引用 `https://cos-sh.tiye.me/Respo/guidebook/` 下的静态 assets，COS 只用
action 内置校验，不新增脚本。原 SPA/mdBook 的 rsync 目录均保持
`/web-assets/repo/Respo/guidebook`，无服务端部署。本 PR 不自动合并或发版。
组织级 COS secrets 需要授权本仓库；PR 不读取部署凭据、不运行 COS 或 rsync。
原 SHA256 校验的 rsync/mdBook 安装、SSH 主机校验和 main 部署条件保留。
CI 的类型步骤显式启用 pipefail，保留上游 Calcit 失败退出码；canonical diff 仅静默输出。
npm 新版本解析使用统一一小时包龄，无包级豁免；已有 lock 的 immutable 重放不重新检查包龄。

```bash
# 与 CI 对齐 mdbook 0.4.14 / mdbook-linkcheck 0.7.6
mdbook build
```

已知 mdBook Cirru 高亮回退为纯文本，见 [Docs Workflow #95](https://github.com/calcit-lang/docs-workflow/issues/95)；当前构建不声称修复该限制。

## License

MIT


# Respo Guidebook

配对正式 Calcit CLI / `@calcit/procs` 0.30.1，以及已发布的 Docs Workflow 0.0.37、
Respo 0.16.124、Reel 0.6.41、UI 0.8.0 和 JS-FFI 0.2.5。升级后重新安装依赖并完整
刷新页面，不混用旧 CLI/alpha runtime。UI 0.8 基础样式可能影响外观。源码仅使用
`calcit.cirru` 与 `deps.cirru`，不生成 compact/package.cirru。

Guide 说明当前 Ref/watch、Option、widget/app dispatch、名义 Store 和宿主边界。
旧 Beginner Guide/API 仍有历史片段，尚未全部迁移或独立执行；站点构建通过不代表
所有旧示例都可用于当前版本。新应用以维护中的模板和已发布接口为准。

## 开发与验收

Node 24、Yarn 4.18.0、正式 0.30.1 CLI：

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
并保存 PR 预览。原项目没有定义附带测试，零个测试不等于业务覆盖；浏览器导航、
搜索与刷新需另行验收。页面 `hud!` 错误展示保留。

## 部署边界

生产 SPA 引用 `https://cos-sh.tiye.me/Respo/guidebook/` 下的静态 assets，COS 只用
action 内置校验，不新增脚本。原 SPA/mdBook 的 rsync 目录均保持
`/web-assets/repo/Respo/guidebook`，无服务端部署。本 PR 不自动合并或发版。
组织级 COS secrets 需要授权本仓库；PR 不读取部署凭据、不运行 COS 或 rsync。
原 SHA256 校验的 rsync/mdBook 安装、SSH 主机校验和 main 部署条件保留。

```bash
cargo install mdbook
cargo install mdbook-linkcheck
mdbook build
```

## License

MIT

## Cumulo.org

> Home page for http://cumulo.org

### Packages

| Package                                          | Version                                                                             |
| ------------------------------------------------ | ----------------------------------------------------------------------------------- |
| [recollect](https://github.com/Cumulo/recollect) | ![Clojars](https://img.shields.io/clojars/v/cumulo/recollect.svg?style=flat-square) |
| [reel](https://github.com/Cumulo/cumulo-reel)    | ![Clojars](https://img.shields.io/clojars/v/cumulo/reel.svg?style=flat-square)      |
| [util](https://github.com/Cumulo/cumulo-util)    | ![Clojars](https://img.shields.io/clojars/v/cumulo/util.svg?style=flat-square)      |

### Workflow

Workflow https://github.com/mvc-works/calcit-workflow

### 使用者影响：Calcit 0.32.0 配对

本轮候选配对正式 CLI/procs **0.32.0**，依赖目标为 Reel 0.7.0、Markdown 0.5.0、
UI 0.9.0、Respo 0.17.0、JS FFI 0.2.8，传递 Router 0.9.0。
Respo 系列以本地候选图联调，正式 tag 发布后还需 Caps 严格安装与远端 CI；
不将本地联调视为已发布图验收。升级后重新安装整张图并完整刷新。

官方 format 迁移 6 处类型表述，22 个定义的 schema 和原两项测试不变。
全 304 定义、完整 strict（diagnostics 为空）、两项测试、动态方法/废弃调用零上限、
原质量预算、构建与 immutable 安装通过。隔离页面检查首页 Markdown、高亮、五个链接目标和刷新，浏览器无 warning/error；未访问外链、未复验坏存档或开发 Reel。
独立只读评审未发现新增问题。未放宽预算、未改工作流、未部署。

此前 0.31.0 已补齐 Respo 入口事件合同，保留应用与 Reel 控制事件。修复 0.31 下原存档往返测试失败：
序列化后的同名 Store 作为数据转 Map，经原字段校验重建本地 Store，名称不代表名义身份。
首页 Markdown、书签、存档 key/格式、高亮和错误处理保持，仍先恢复成功再注册保存。
坏存档停止启动并保留原值，详见 [#45](https://github.com/Cumulo/cumulo.org/issues/45)。

原 all-defs、完整 strict、质量基线及两项测试不变；不新增脚本、预算或强转。
原代码没有 HUD 引入，本次不虚构或移除 HUD，现有 main.mjs 热更新回调保持。
COS/CDN 与前端 rsync 路径不变，无后端部署。

### 历史：此前已合并的源码迁移

页面仍由 `index.html` / Vite 构建，首页 Markdown 和书签链接不变。
旧 `app.page` 的 4 个 ClojureScript 页面生成定义及其私有 `cdn?` 已退役：当前入口、
脚本和 CI 均未调用它们，也没有可用的 shell-page/strint/cljs.reader 依赖；如有仓库外
脚本直接调用它们，需要改用 Vite。旧实现可从 Git 历史恢复，不维护第二套页面生成器。

Store、操作和 Reel 使用真实类型。持久化仍使用 localStorage 的 `cumulo.org` 键，
字段不变；同时接受旧 Map 和序列化后的 Store Struct，检查字段并重建当前名义 Store，
避免把自己保存的 Struct 忽略。无效字段拒绝恢复并输出具体原因。
页面关闭保存仍是原有机制，不宣称能防止崩溃或配额失败导致的数据丢失。

上述历史源码迁移使用0.30.1-alpha.5配对；当前工具链与模块图见本文开头。
正式图的运行结果以本轮PR为准，旧alpha验收不作为新证明；不在应用仓库改动编译器或上游发布。

Node.js 24 / Yarn 4.18.0：

```bash
corepack enable
caps --strict --ci
yarn install --immutable
caps verify --toolchain
calcit --check-only --all-defs
calcit fix --workflow strict --verify --format json
calcit test --require-match
yarn build
# 先编译，再在单独终端运行开发服务；不增加 concurrently。
yarn dev
```

开发页面添加 `?mode=dev`，原 Reel 开关为 Shift+Meta+Alt+K。
HMR 使用原 `main.mjs` 回调；编译输出 `js-out/` 不提交到仓库。
两项附加测试覆盖状态/内容/恢复与真实 Store 序列化往返，不新增验证脚本。

### 前端 COS/CDN

CI 构建的 JS/CSS 使用 `https://cos-sh.tiye.me/Cumulo/cumulo.org/` 基址。
PR 使用包含 PR 号、run 和 attempt 的隔离前缀；只通过 COS action 的
`public-base-url` 启用内置逐文件校验，不再复制校验脚本。
同仓 PR 缺少 COS secrets 时明确跳过上传，main 缺少 secrets 则停止部署。

原 rsync 前端路径 `/web-assets/repo/${github.repository}` 不变，无后端部署或路径重构。
PR 不合并、不触发生产 rsync；只有后续明确合并后的原 main 工作流才部署。
Action 使用精确正式 tag，接受 tag 可移动的供应链风险，不等同不可变 SHA。
保留原质量门禁并收紧，未提高预算；构建的大 chunk 提示保留，不调高阈值。

### License

MIT

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

### 使用者影响：Calcit 0.32.1

开发与 CI 配对升级为正式 Calcit / procs **0.32.1**，迁移新类型标注语法。直接依赖精确已发布 Reel 0.7.0-alpha.5、Markdown 0.5.0-alpha.5、UI 0.9.0、Respo 0.17.1、JS-FFI 0.2.9；传递 Router 0.9.0-alpha.4。Reel/Markdown/Router 尚无本轮对应正式 tag，不将它们冒称正式版，也不使用 hash 或本地候选代替已发布图。升级后重新严格安装依赖并刷新。

官方格式转换涉及六处旧类型形式，22 个完整项目定义视图与规范化后的原 main 相同，代码、schema 和原两项测试保持。首页 Markdown、书签、高亮、存档 key/格式和原 HMR 不变；原质量预算不放宽。项目版本仍为 0.1.2，本轮不发版、不合并或生产部署。

### 开发与门禁

使用 Node.js 24、Yarn 4.18.0。新解析出的 npm 包版本必须已发布至少 60 分钟，本仓库未配置单包豁免；已有 immutable 锁版本不重新计算等待时间。

```bash
caps --strict --ci
yarn install --immutable
caps verify --toolchain
calcit --check-only --all-defs
calcit fix --workflow strict --verify --format json
calcit test --require-match
yarn build
yarn dev
```

本轮通过 Caps 六模块严格解析、CLI/procs 配对、immutable 安装、canonical、304 项全定义、完整 strict（diagnostics=[]）、原两项测试、动态方法/废弃调用零上限及原质量基线。构建的大 chunk 提示保留，不调高阈值，也不把它视为类型或运行验收通过的替代证据。源码仅维护 calcit.cirru/deps.cirru，禁止 compact/package/js-out 回流。实际隔离首页 Markdown、高亮、五个链接目标和刷新正常，控制台无 warning/error；未访问外链。

### 持久化与已有迁移

仍使用 localStorage 的 `cumulo.org` key。先恢复成功，再注册原 beforeunload 保存；既有字段和 Map 写入形状保持。恢复接受旧 Map 或序列化 Store 的数据，转 Map 经字段校验后重建本地名义 Store，同名不代表可信身份。失败停止启动并保留原值，见 [#45](https://github.com/Cumulo/cumulo.org/issues/45)。本轮未复验隔离坏存档或开发 Reel，不以正常首页验收替代这些测试；原两项原生测试保留。

此前已移除未使用的 ClojureScript app.page 页面生成定义：当前入口、脚本和 CI 使用 Vite；仓库外旧调用需改用 Vite，历史实现仍可从 Git 取回。本轮没有进一步删除这些接口。应用原来没有 HUD 引入，本轮未添加或移除 HUD，原 main.mjs 热更新回调保持。

### 前端 COS/CDN

原工作流不改：CDN 基址 `https://cos-sh.tiye.me/Cumulo/cumulo.org/`，PR 以 PR/run/attempt 隔离。仅上传 dist/，通过 COS action v1.2.0 的 public-base-url 使用内置逐文件校验，不新增 checker。PR 缺 secrets 明确跳过上传，main 缺 secrets 停止部署。

原前端 rsync 路径 `/web-assets/repo/${github.repository}` 不变，无后端部署。精确正式 Action tag 及已接受的可移动风险保持；本 PR 不授权生产部署。

### License

MIT

<div align="center">

# Livis · 黎维斯

### 下载后，资料留在你的电脑里。

Windows x64 本地应用：导入你主动选择的资料，搜索聊天内容和附件，把需要的上下文接回 Livis 工作台。

[**下载 Livis 0.6.6**](https://github.com/Destined-at-Dawn/livis/releases/tag/v0.6.6) · [**打开下载页**](https://download.yulitongxing.com/#livis) · [使用说明](docs/getting-started.md) · [问题反馈](https://github.com/Destined-at-Dawn/livis/issues)

![Livis Windows 实际运行画面](docs/assets/livis-windows.png)

<sub>截图使用合成测试资料，不是真实聊天。</sub>

</div>

## 当前版本

Livis 0.6.6 提供 Windows x64 安装程序。主程序默认直接进入工作台，不要求内测码。旧版 license 文件不会被读取、迁移或刷新，新版本授权使用 v2 文件命名空间。

安装包 SHA-256

`8876863c490ab367f6ff42e2bd0acb87b7f1c9aca0e3f3d96d51aab061f66622`

- [安装包与校验材料](downloads/0.6.6/)
- [GitHub Release 下载](https://github.com/Destined-at-Dawn/livis/releases/tag/v0.6.6)

## 下载后能做什么

- **保留原件。** 导入 ZIP、TXT 和附件，原文件与解析结果分开保存。
- **查找记录。** 对已导入的聊天文本和附件进行搜索，必要时打开原文件。
- **读取本机 Agent 会话。** Agent Desk 在白名单目录内读取本机 Claude Code、Codex 和 Pi 会话 JSONL，展示可检索的会话详情。
- **接回付费插件。** 聊天读取、同步和其他扩展能力按插件签名包与授权状态单独解锁。
- **保护本机数据。** 用户资料、账号凭据和设备环境不会打进公开仓库或下载页。

## 三步开始

1. 从 [GitHub Release](https://github.com/Destined-at-Dawn/livis/releases/tag/v0.6.6) 或[官方下载页](https://download.yulitongxing.com/#livis)取得安装包。
2. 用 `Get-FileHash .\Livis-Setup-0.6.6-x64.exe -Algorithm SHA256` 核对 SHA-256，再运行安装程序。
3. 启动 Livis，选择本机资料位置，导入主动选择的资料；需要额外能力时再导入已签名付费插件。

## 示例文件

仓库中的 [examples](examples/) 使用虚构人物与内容，可先用来熟悉导入流程。

## 数据与隐私

程序文件和用户资料分开保存。具体目录、备份和反馈文件说明见[文件与数据](docs/files-and-data.md)。Livis 不会把本机聊天库、授权码、API Key 或密码提交到这个仓库。

## 官方推荐第三方

Livis 目录会显示 [WeChat Local Vault](https://github.com/Destined-at-Dawn/wechat-website) 作为独立第三方工具。它不随 Livis 安装包或本仓库发布。

## 关于这个仓库

这里提供下载入口、版本校验材料、使用说明、示例和问题反馈，不提供应用核心源码、Git 元数据、用户文件或开发环境。

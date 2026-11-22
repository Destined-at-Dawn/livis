# 开始使用 Livis 0.6.6

## 下载与校验

从 [GitHub Release](https://github.com/Destined-at-Dawn/livis/releases/tag/v0.6.6) 或[官方下载页](https://download.yulitongxing.com/#livis)下载 `Livis-Setup-0.6.6-x64.exe`。

在 PowerShell 中校验安装包

```powershell
Get-FileHash .\Livis-Setup-0.6.6-x64.exe -Algorithm SHA256
```

应得到

```text
8876863c490ab367f6ff42e2bd0acb87b7f1c9aca0e3f3d96d51aab061f66622
```

校验值不一致时不要运行文件，请重新下载。

## 安装与启动

运行安装程序，按 Windows 向导选择安装目录。Livis 0.6.6 主程序默认直接进入工作台，不要求内测码。Windows SmartScreen 显示未知发布者时，先确认下载来源和 SHA-256，再按你的系统策略决定是否继续。

旧版 beta activation、legacy 文件和旧命名的 license 文件不会被新版本读取、迁移或刷新。历史授权需要按新版流程重新激活。

## 导入资料

1. 准备你有权使用的 ZIP、TXT 或附件。
2. 在 Livis 中选择导入入口和本地保存位置。
3. 导入后按关键词、会话或文件名搜索。
4. 需要时打开原文件或导出结果。

无法识别的原文件仍会保留，Livis 不会根据缺失内容猜测发言人或时间。

## 读取本机 Agent 会话

Agent Desk 随 0.6.6 安装包提供。它只在白名单目录内读取本机 Claude Code、Codex 和 Pi 的会话 JSONL，用于检索和查看会话详情。它不会替你发送消息，也不会把本机会话自动发布到公开仓库。

## 付费插件

聊天读取、同步和其他扩展能力由独立插件提供。按插件说明导入已签名包，再使用对应授权完成激活。主程序开放不代表所有插件自动解锁。

## 数据与反馈

导入资料和本地索引保存在你选择的用户数据目录。日志与反馈材料先保存到本机，提交公开问题时请删除真实聊天、授权码、设备标识、API Key 和密码。

详见[文件与数据](files-and-data.md)。

## 问题反馈

请在 [GitHub Issues](https://github.com/Destined-at-Dawn/livis/issues) 提供版本号、Windows 版本、复现步骤和预期结果。

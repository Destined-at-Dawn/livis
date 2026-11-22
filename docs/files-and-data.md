# 文件与数据

## 安装包

安装程序由 GitHub Release 提供。公开仓库只保存发布说明、校验文件和清单，不把核心源码放进下载目录。

```text
downloads/0.6.6/
├─ README.md
├─ RELEASE-NOTES.md
├─ Livis-Setup-0.6.6-x64.exe.sha256
└─ manifest.json
```

## 用户资料

安装目录保存程序文件和运行时。用户导入的资料、索引、日志、反馈和 v2 授权文件保存在本机用户数据目录，具体位置以首次启动时的选择和应用内设置为准。

常见内容包括

- `data/`：导入原件、解析结果和本地索引
- `logs/`：本地运行日志
- `feedback/`：用户主动导出的反馈材料
- `license-v2-*`、`device-v2*`、`status-cache-v2.json`、`clock-v2.json`、`history-v2.jsonl`：新版授权状态文件

旧版 beta activation、legacy 文件和旧命名的 license 文件由 0.6.6 忽略，不会被刷新或迁移。

## 备份

迁移电脑前，请备份实际用户数据目录和你主动保存的原始资料。只复制安装目录不能恢复聊天资料、索引或授权状态。

不要把用户数据目录、会话 JSONL、授权码、API Key、密码或诊断原件提交到 GitHub。

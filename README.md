# Livis · 黎维斯

把聊天里值得留下的内容，留在自己的电脑上。

Livis 是一个 Windows 桌面应用。把聊天记录和附件导入后，你可以按关键词找到消息、查看原文件，再把有用的内容收进知识库。不使用 AI，也能完成导入和查找。

[下载 Windows 版](https://github.com/Destined-at-Dawn/livis/releases/download/v1.0.0/Livis-Plus-v1.0.0-r1-Windows-x64.zip) · [使用说明](docs/getting-started.md) · [文件存在哪里](docs/files-and-data.md) · [反馈问题](https://github.com/Destined-at-Dawn/livis/issues) · [作者网站](https://lilanyuan.cn)

## 开始使用

1. 下载 ZIP，解压后运行 `Livis-Plus-Setup-1.0.0-r1-x64.exe`。
2. 打开 **Livis Plus**。如果暂时不需要 AI，先选择暂时不用模型。
3. 在 **微信主动分享** 中选择你导出的 ZIP、TXT 或附件，点击导入所选文件。
4. 搜索一个名字、日期或关键词，打开记录，查看消息和附件。

Plus 免费，安装后不需要激活码。当前提供 Windows x64 版本。`1.0.0 r1` 目前是预览版：安装、启动和旧公开版升级已检查，真实微信导出兼容性仍在补测。Pro 下载尚未开放。

## 聊天记录与附件

你可以导入与张三的私聊，也可以导入项目讨论群的聊天记录。下面用虚构姓名说明文件内容；实际名称以你导出的文件为准。

```text
准备导入的文件/
├─ 张三-私聊.zip
│  ├─ 聊天记录.txt
│  └─ 附件/                 # 导出文件里包含的图片、文件等
├─ 项目讨论群-群聊.zip
│  ├─ 聊天记录.txt
│  └─ 附件/
└─ 李四-私聊.txt
```

导入时保留原文件，重复导入同一文件不会再建一份批次。聊天文本格式被识别后，可以查看发言人、时间和消息；格式未被识别时，原件仍会留下。

Livis 按导入批次保存资料，不会读取你的微信或 QQ 数据库。私聊、群聊的示例名称也不代表程序会自动判断聊天类型。[查看示例文件](examples/)。

## 安装后有哪些文件？

**程序和聊天资料分开存放。** 安装文件夹中是运行程序；你导入的记录、附件和资料库默认在 Windows 用户目录中。

```text
你选择的安装目录/
├─ Livis Plus.exe
├─ Uninstall Livis Plus.exe
├─ resources/               # 应用、Python 和 li 运行时
├─ locales/                 # 界面运行库的语言文件
└─ …                        # DLL、PAK 等运行文件

%LOCALAPPDATA%/Livis/
├─ data/
│  ├─ Inbox/
│  │  ├─ Staging/            # 导入中的临时文件
│  │  └─ Ready/
│  │     └─ <批次标识>/
│  │        ├─ files/张三-私聊.zip
│  │        ├─ expanded/聊天记录.txt
│  │        ├─ manifest.json
│  │        ├─ derived.json
│  │        └─ state.json
│  └─ livis-knowledge.sqlite3
├─ logs/                    # 运行诊断日志
└─ feedback/                # 你选择导出的反馈包
```

`<批次标识>` 实际是一串字符，不是联系人姓名。`expanded/` 只在导入 ZIP 时出现，附件路径沿用 ZIP 内的名称。升级旧公开版时，资料也可能继续放在 `%LOCALAPPDATA%/LivisPublic/data`；自选资料目录以你的设置为准。

[完整目录说明](docs/files-and-data.md)列出了常见文件类型、打开方式，以及备份时该带走哪些文件。

## AI 是可选的

你可以连接自己电脑上的模型服务，也可以使用自己的云模型 API。Livis 不预装大模型，也不会替你选择一个云供应商。

导入、保存和搜索不需要调用模型。选择云模型处理某段内容时，这段内容会发给你配置的服务。需要离线使用时，使用本机模型，并关闭不需要的网络功能。[配置模型与数据说明](docs/getting-started.md#模型与数据)。

## 反馈与联系

遇到问题，可以在 [Issues](https://github.com/Destined-at-Dawn/livis/issues) 里写下版本号、出错步骤和预期结果。不要把真实聊天、API Key 或个人资料贴进公开问题。

应用中的日志与反馈可以预览并导出诊断信息。当前导出保存在本机，需要你自行交给作者；程序不会把本地待提交显示成已经送达。

定制版、企业或学校安装服务，请在应用中打开 **联系作者**，或访问 [lilanyuan.cn](https://lilanyuan.cn)。

## 关于这个仓库

这里提供 Livis 的下载、使用说明和问题反馈，暂不开放应用源码。免费使用与开源是两回事。

微信主动分享格式参考 [WeChatBridge](https://github.com/freestylefly/WeChatBridge)。相关许可和来源见 [第三方声明](WeChatBridge-notices/THIRD-PARTY-NOTICES.md)；运行时的许可随安装程序保留。

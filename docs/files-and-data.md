# 文件存在哪里

Livis 把程序、聊天资料和诊断日志放在不同的位置。这页用张三、李四和项目讨论群举例，姓名、群名和内容都是虚构的。

## 1. 下载到的文件

```text
Livis-Plus-v1.0.0-r1-Windows-x64.zip
├─ Livis-Plus-Setup-1.0.0-r1-x64.exe
├─ 使用指南.md
└─ WeChatBridge-notices/
   ├─ LICENSE
   ├─ THIRD-PARTY-NOTICES.md
   └─ LIVIS-SOURCE.json
```

运行安装程序后，ZIP 不会自动变成你的聊天资料目录。包内指南是打包时的版本；最新说明以本仓库为准。

## 2. 安装文件夹

安装目录由你选择。下面以 `D:\Apps\Livis Plus` 为例，不是固定位置。

```text
D:\Apps\Livis Plus\
├─ Livis Plus.exe            # 应用入口
├─ Uninstall Livis Plus.exe  # 卸载程序
├─ resources/
│  ├─ app.asar              # 桌面应用资源
│  ├─ backend/              # 本地后端
│  ├─ python/               # Python 运行环境
│  ├─ pi/                   # li 运行时
│  ├─ livis-integrity.json   # 应用资源校验信息
│  └─ elevate.exe
├─ locales/
├─ LICENSE.electron.txt
├─ LICENSES.chromium.html
├─ ffmpeg.dll
├─ resources.pak
└─ …                        # 其他 DLL、PAK、BIN 等运行文件
```

这是安装包中的实际结构节选。不要把聊天记录复制到 `resources`，也不要单独删除里面的运行文件来腾空间。

## 3. 用户资料目录

按 `Win + R`，输入 `%LOCALAPPDATA%\Livis`，可以打开默认目录。资料保存在 `data`，日志和反馈分别放在 `logs`、`feedback`。

```text
%LOCALAPPDATA%\Livis\
├─ data/
│  ├─ Inbox/
│  │  ├─ Staging/
│  │  └─ Ready/
│  │     ├─ <张三私聊的批次标识>/
│  │     │  ├─ files/张三-私聊.zip
│  │     │  ├─ expanded/
│  │     │  │  ├─ 聊天记录.txt
│  │     │  │  └─ 附件/       # ZIP 内原本有附件时
│  │     │  ├─ manifest.json
│  │     │  ├─ derived.json
│  │     │  └─ state.json
│  │     ├─ <项目讨论群的批次标识>/
│  │     │  ├─ files/项目讨论群-群聊.zip
│  │     │  ├─ expanded/聊天记录.txt
│  │     │  ├─ manifest.json
│  │     │  ├─ derived.json
│  │     │  └─ state.json
│  │     └─ <李四私聊的批次标识>/
│  │        ├─ files/李四-私聊.txt
│  │        ├─ manifest.json
│  │        ├─ derived.json
│  │        └─ state.json
│  └─ livis-knowledge.sqlite3
├─ logs/
│  ├─ backend.jsonl
│  └─ livis-main.jsonl
└─ feedback/
   └─ <反馈标识>.json
```

这里的尖括号名称是为了看懂示例；实际批次文件夹是 64 位字符标识，反馈文件名是 32 位字符标识。程序不会自动建立名为私聊或群聊的分类目录。原文件名和 ZIP 内部路径会保留，所以实际看到的文件名可能不同。

`Staging` 在导入时使用；`Ready` 是已经写入的批次。直接导入 TXT、图片或其他附件时，没有 `expanded` 文件夹。

| 文件 | 内容 | 怎么使用 |
| --- | --- | --- |
| `files/` | 你选择导入的原文件 | 可从应用下载原件 |
| `expanded/` | ZIP 中解出的文件 | 路径沿用原 ZIP，可能包含文字和附件 |
| `manifest.json` | 原文件名、大小、类型和批次信息 | 程序读取，不必手动修改 |
| `derived.json` | 提取的文本、消息和附件列表 | 可能含聊天内容，属于用户资料 |
| `state.json` | 该批次的导入状态 | 程序读取 |
| `livis-knowledge.sqlite3` | 资料条目与搜索索引 | 随资料目录一起备份 |
| `*.jsonl` | 每行一条的诊断日志 | 可在应用中预览和导出 |
| `feedback/*.json` | 你选择导出的诊断信息 | 当前保存在本地，未自动发送 |

升级旧公开版时，可能继续使用 `%LOCALAPPDATA%\LivisPublic\data`。显式选择过资料目录的用户以实际目录为准。窗口设置和界面缓存属于另外的应用配置，不等同于聊天资料；本页只列出资料和主要运行文件。

## 4. 会遇到哪些文件类型？

| 类型 | 常见例子 |
| --- | --- |
| 聊天文本 | `聊天记录.txt`、`李四-私聊.txt` |
| 导出压缩包 | `张三-私聊.zip`、`项目讨论群-群聊.zip` |
| 图片 | `.png`、`.jpg`、`.jpeg`、`.webp` |
| 文档 | `.pdf` |
| 视频 | `.mp4`、`.mov` |
| 音频 | `.mp3`、`.wav`、`.m4a` |

上表中的类型可直接选择导入。ZIP 内还可能有其他格式的附件：Livis 会保留通过导入检查的文件，但保留文件不代表每种格式都能预览。图片、音视频的显示也取决于浏览器运行库支持的编码。

聊天记录可能是两个人的私聊，也可能是多人群聊。只有文本符合受支持的格式时，程序才提取发言人、时间和消息；文件名中出现群聊并不会改变解析方式。

## 5. 备份时复制什么？

退出 Livis 后，复制**实际使用的整个 `data` 目录**，包括 `Inbox` 和资料库文件。只复制安装目录，带不走你导入的聊天。

`logs` 和 `feedback` 可以按需要另存；它们不是聊天备份。模型配置、Windows 凭据与界面设置也不保证随 `data` 一起迁移，换电脑后请重新检查模型连接。

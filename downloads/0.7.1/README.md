# Livis 0.7.1 下载材料

公开仓库只保留下载说明、校验材料和示例。核心程序源码、付费插件实现、授权服务和密钥材料不在这里。

- 安装包：`Livis-Setup-0.7.1-x64.exe`
- 便携包：`Livis-Portable-0.7.1-win-x64.zip`
- 数据目录：`%LOCALAPPDATA%\Livis\data`
- 下载地址：https://github.com/Destined-at-Dawn/livis/releases/tag/v0.7.1 或 https://download.yulitongxing.com/#livis

校验方法：

```powershell
Get-FileHash .\Livis-Setup-0.7.1-x64.exe -Algorithm SHA256
```

结果应与同目录 `Livis-Setup-0.7.1-x64.exe.sha256` 中的值一致。

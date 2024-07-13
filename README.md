# obsidian仓库-文件夹配置统一化
## 前言
在每次新建obsidian文件夹时，文件夹的主题和各种设置都需要重新设置，为了解决这个问题，我写了一个powershell脚本，朋友们只需要***键入一行命令***就可以将文件夹统一配置
## 步骤与前提
1. 将设置好的.obsidian文件移动到自己想要放置的位置，保证文件路径**不包含中文名称**(中文名称可能会出现无法预估的错误)
 > "D:\dotFile\ObsidianConfig\.obsidianConfig"(这是我安放的位置，诸位根据自己需求自行修改)
2. 打开powershell(注意，必须是powershell!不是cmd)
3. 在包含文件mkObsidian.ps1的目录下执行命令
   ```powershell
    .\mkObsidian.ps1 -new "newfile" -old "oldfile"
   ```
   *其中，newfile替换成你的新文件夹名，oldfile为你之前设置好的.obsidian文件*

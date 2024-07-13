# obsidian仓库-文件夹配置统一化
## 前言
在每次新建obsidian文件夹时，文件夹的主题和各种设置都需要重新设置，为了解决这个问题，我写了一个powershell脚本，朋友们只需要***键入一行命令***就可以通过创建链接的方式将文件夹统一配置
## 步骤与前提
1. 将设置好的.obsidian文件移动到自己想要放置的位置，保证文件路径**最好不包含中文名称**(中文名称可能会出现无法预估的错误)
 > "D:\dotFile\ObsidianConfig\.obsidianConfig"(这是我安放的位置，诸位根据自己需求自行修改)
2. 打开powershell(注意，必须是powershell!不是cmd)
3. 在包含文件mkObsidian.ps1的目录下执行命令，这会创建一个指向"oldfile"的链接
   ```powershell
    .\mkObsidian.ps1 -new "newfile" -old "oldfile"
   ```
   *其中，newfile替换成你的新文件夹名，oldfile为你之前设置好的.obsidian文件*
   ***
   文件路径最好用双引号包裹
   ***
   > 例如
   ```powershell
   .\mkObsidian.ps1 -new "D:\ObsidianVault\Test\.obsidian" -old "D:\dotFile\ObsidianConfig\.obsidianConfig"
   ```
4. 出现类似如下界面即完成配置
   ![alt text](assets/image.png)

## 其他事项
- 传递的"oldfile"必须完整，即以.obsidian结尾(或者是你配置好的文件名称)
- 传递的"newfile"可以只用传递文件夹名，脚本会自动创建.obsidian文件
- 当你修改其中任意一个指向oldfile文件的链接时，所有的oldfile文件的链接和oldfile都会改变
> 例如
   ```powershell
   .\mkObsidian.ps1 -new "D:\ObsidianVault\Test" -old "D:\dotFile\ObsidianConfig\.obsidianConfig"
   ```
***
**如果出现权限不足问题，请用终端管理员身份进行命令输入**


## 指正和不足
本人学术尚浅，只是利用一点powershell脚本罢了，欢迎提建议和commit 

# obsidian仓库-文件夹配置统一化
[toc]
## 前言
在每次新建obsidian仓库(vaults)时，仓库的主题和快捷键等都需要重新设置，这是因为每次创建新的仓库时
**新仓库的配置文件都是默认配置**
![alt text](assets/image1.png)
> 但是如果通过复制粘贴旧配置文件来达到新仓库的配置和旧仓库一致的话，**无法保证修改某一个配置文件时，其他仓库的配置文件都统一被修改**

为了解决这个问题，我写了一个powershell脚本，朋友们只需要***键入一行命令***就可以通过创建链接的方式将文件夹统一配置，本质是通过创建一个指向旧配置文件夹的链接来达到目的。因而，你可以通过修改任意一个指向旧配置文件的链接来修改所有的链接，**从而达到仓库配置统一化的目的**，因为本质上这些链接都指向同一个配置文件。
## 步骤与前提
1. 将设置好的.obsidian文件夹移动到自己想要放置的位置，保证文件夹路径**最好不包含中文名称**(中文名称可能会出现无法预估的错误)
 > "D:\dotFile\ObsidianConfig\\.obsidianConfig"(这是我安放的位置，诸位根据自己需求自行修改)
2. 打开powershell(注意，必须是powershell!不是cmd)
3. 在包含文件mkObsidian.ps1的目录下执行命令，这会创建一个指向"oldfile"的链接
   ```powershell
    .\mkObsidian.ps1 -new "newfile" -old "oldfile"
   ```
   *其中，newfile替换成你的新文件夹名，oldfile为你之前设置好的.obsidian文件*
   ***
   文件路径最好用双引号包裹
   > 例如
   ```powershell
   .\mkObsidian.ps1 -new "D:\ObsidianVault\Test\.obsidian" -old "D:\dotFile\ObsidianConfig\.obsidianConfig"
   ```
4. 出现类似如下界面即完成配置
   ![alt text](assets/image.png)

## 其他事项
- **该脚本会把新文件夹的原有配置文件删除(如果有的话)，并重新创建一个指向旧配置文件的链接**，如果想要保留新文件夹的配置，请不要使用该脚本，该脚本只是**保证新文件夹的配置同旧文件夹一致**
- 传递的"oldfile"必须完整，即以.obsidian结尾(或者是你配置好的文件名称)
- 传递的"newfile"可以只用传递文件夹名，不用带有类似".obsidian"结尾的字符，脚本会自动识别并创建.obsidian文件
> 例如
   ```powershell
   .\mkObsidian.ps1 -new "D:\ObsidianVault\Test" -old "D:\dotFile\ObsidianConfig\.obsidianConfig"
   ```
- 当你修改其中任意一个指向oldfile文件的链接时，所有的oldfile文件的链接和oldfile都会改变

***
**如果出现权限不足问题，请用终端管理员身份打开powershell进行命令输入**

## 什么是配置文件
配置文件是用于存储应用程序设置和配置信息的文件。**一般以"."开头**它通常用于告诉程序如何运行，包括诸如数据库连接信息、服务器设置、应用程序行为、用户偏好设置等。配置文件使得用户和开发者能够自定义应用程序，而不必修改源代码。

## 指正和不足
本人学术尚浅，代码中依然有很多不足，欢迎提issue和pull 

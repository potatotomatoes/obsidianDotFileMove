# for link the dotfile of the obsidianConfig.

param($new, $old)

$targetStr=".obsidian"

# 检查传入的参数是否包含.obsidian
if ($new -like "*$targetStr"){

	# 检查传入文件是否存在
	if (Test-Path $new) {
		Remove-Item -Path $new -Recurse -Force;
		cmd /c mklink /J $new $old
	} 
	else {
		cmd /c mklink /J $new $old
	}	
} 
else {
	if (Test-Path $new) {
		if (Test-Path $new\$targetStr) {
			Remove-Item -Path $new\$targetStr -Recurse -Force;
			cmd /c mklink /J $new\$targetStr $old;
		}
		else {
			cmd /c mklink /J "$new\$targetStr" $old;
		}
	} 
	else {
		mkdir $new;
		cmd /c mklink /J "$new\$targetStr" $old;
	}
}

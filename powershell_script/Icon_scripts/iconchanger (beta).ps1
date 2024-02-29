$TargetFile = "C:\Program Files\Mozilla Firefox\firefox.exe"
$shortcutFile = "G:\Admin\Desktop\Firefox.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$shortcut.TargetPath = $TargetFile
$shortcut.IconLocation = "G:\Admin\Desktop\Icons\test8.ico"
$shortcut.Save()
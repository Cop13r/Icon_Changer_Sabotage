# Set paths
$shortcutFolder = "C:\Users\Admin\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar"
$iconsFolder = "C:\Windows\Branding\shellbrd\Icons"
$WScriptShell = New-Object -ComObject WScript.Shell

# Get all .lnk files in the specified folder
$lnkFiles = Get-ChildItem -Path $shortcutFolder -Filter *.lnk

foreach ($lnkFile in $lnkFiles) {
    # Set the shortcut and target file paths
    $shortcutFile = $lnkFile.FullName
    $shortcut = $WScriptShell.CreateShortcut($shortcutFile)
    $targetFile = $shortcut.TargetPath

    # Pick a random icon from the icons folder
    $iconFiles = Get-ChildItem -Path $iconsFolder -Filter *.ico
    $randomIcon = Get-Random -InputObject $iconFiles

    # Update shortcut properties
    $shortcut.TargetPath = $targetFile
    $shortcut.IconLocation = $randomIcon.FullName
    $shortcut.Save()
}

Remove-Item -Path "C:\Users\Admin\AppData\Local\IconCache.db" -Force
Stop-Process -Name explorer -Force
Start-Process explorer

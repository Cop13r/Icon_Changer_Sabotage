#Allow restricted scripts

powershell
Set-ExecutionPolicy -ExecutionPolicy Unrestricted
exit

# Set System Variables

powershell
$env:MAIN = Get-Location
setx Main $env:MAIN /M
exit

Powershell.exe -executionpolicy remotesigned -File C:\Icon_Changer_Sabotage\powershell_script\Setting_Envirnmental_Variables.ps1



#Run powershell script that makes task schedule, run



#Copy files and folders

xcopy %FROM% %TWO% /e /i















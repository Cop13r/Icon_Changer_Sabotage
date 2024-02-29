#Allow restricted scripts

Set-ExecutionPolicy -ExecutionPolicy Unrestricted

# Set System Variables

setx test Get-Location /M

Powershell.exe -executionpolicy remotesigned -File C:\Icon_Changer_Sabotage\powershell_script\Setting_Envirnmental_Variables.ps1



#Run powershell script that makes task schedule, run



#Copy files and folders

xcopy %FROM% %TWO% /e /i















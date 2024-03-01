#Allow restricted scripts

powershell -Command "Set-ExecutionPolicy -ExecutionPolicy Unrestricted"

# Set System Variables

powershell -Command "$env:MAIN = Get-Location; setx Main $env:MAIN /M"

#Run powershell script that makes task schedule, run



#Copy files and folders

xcopy %FROM% %TWO% /e /i















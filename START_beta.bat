#Allow restricted scripts

powershell -Command "Set-ExecutionPolicy -ExecutionPolicy Unrestricted"

# Set System Variables

powershell -Command "$env:MAIN = Get-Location; setx Main $env:MAIN /M"

timeout /t 10
timeout /t 5

powershell -Command "$env:MAIN = Get-Location; setx Main $env:MAIN /M"


timeout /t 5
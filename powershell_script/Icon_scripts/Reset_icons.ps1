Remove-Item -Path "C:\Users\Admin\AppData\Local\IconCache.db" -Force
Stop-Process -Name explorer -Force
Start-Process explorer
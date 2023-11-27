while($true) {
    if (Test-Path "G:\Admin\Desktop\Icons\Test\1\exe.bat") {
        Move-Item -Path "G:\Admin\Desktop\Icons\Test\1\exe.bat" -Destination "G:\Admin\Desktop\Icons\Test\2"
        Write-Host "File moved from Test\1 to Test\2."
        Start-Sleep -Seconds 0.5
    }
    elseif (Test-Path "G:\Admin\Desktop\Icons\Test\2\exe.bat") {
        Move-Item -Path "G:\Admin\Desktop\Icons\Test\2\exe.bat" -Destination "G:\Admin\Desktop\Icons\Test\1"
        Write-Host "File moved from Test\2 to Test\1."
        Start-Sleep -Seconds 0.5
    }
    else {
        Write-Host "No file to move."
        Start-Sleep -Seconds 0.5
    }
}

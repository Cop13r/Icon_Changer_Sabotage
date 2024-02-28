while($true) {
    if (Test-Path "G:\Admin\Documents\GitHub\Icon_Changer_Sabotage\TEST\1\test.txt") {
        Move-Item -Path "G:\Admin\Documents\GitHub\Icon_Changer_Sabotage\TEST\1\test.txt" -Destination "G:\Admin\Documents\GitHub\Icon_Changer_Sabotage\TEST\2"
        Write-Host "File moved from Test\1 to Test\2."
        Start-Sleep -Seconds 0.5
    }
    elseif (Test-Path "G:\Admin\Documents\GitHub\Icon_Changer_Sabotage\TEST\2\test.txt") {
        Move-Item -Path "G:\Admin\Documents\GitHub\Icon_Changer_Sabotage\TEST\2\test.txt" -Destination "G:\Admin\Documents\GitHub\Icon_Changer_Sabotage\TEST\1"
        Write-Host "File moved from Test\2 to Test\1."
        Start-Sleep -Seconds 0.5
    }
    else {
        Write-Host "No file to move."
        Start-Sleep -Seconds 0.5
    }
}

# Set the directory path where the .ico files are located
$directoryPath = "G:\Admin\Desktop\Icons\Subtle Sabotage\Icons"

# Get all .ico files in the directory
$files = Get-ChildItem -Path $directoryPath -Filter *.ico

foreach ($file in $files) {
    $randomName = [System.IO.Path]::GetRandomFileName()
    $extension = $file.Extension
    $newFileName = $randomName + $extension

    $newPath = Join-Path -Path $directoryPath -ChildPath $newFileName

    Rename-Item -Path $file.FullName -NewName $newPath
}

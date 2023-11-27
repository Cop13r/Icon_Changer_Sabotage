# Define the path to the folder
$folder = 'G:\Admin\Desktop\Icons\Test\Test_rename'

# Get all the files in the folder
$files = Get-ChildItem $folder -File

# Loop through each file
foreach ($file in $files) {
    # Get the base name and extension of the file
    $baseName = $file.BaseName
    $extension = $file.Extension

    # Reverse the base name
    $reversedBaseName = -join $baseName[($baseName.Length-1)..0]

    # Construct the new file name
    $newFileName = $reversedBaseName + $extension

    # Rename the file
    Rename-Item -Path $file.FullName -NewName $newFileName
}

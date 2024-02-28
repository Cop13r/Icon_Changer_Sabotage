# Define the path to the folder
$folder = 'G:\Admin\Desktop\Icons\Test\Test_rename'

# This function will be used to rename items in a folder
function Rename-ItemsInFolder($folderPath) {
    # Get all the files in the folder
    $files = Get-ChildItem $folderPath -File

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

    # Get all the directories in the folder
    $directories = Get-ChildItem $folderPath -Directory

    # Loop through each directory
    foreach ($directory in $directories) {
        # Get the name of the directory
        $name = $directory.Name

        # Reverse the name
        $reversedName = -join $name[($name.Length-1)..0]

        # Rename the directory
        Rename-Item -Path $directory.FullName -NewName $reversedName

        # Call this function recursively on the renamed directory
        Rename-ItemsInFolder (Join-Path $folderPath $reversedName)
    }
}

# Call the function on the root folder
Rename-ItemsInFolder $folder

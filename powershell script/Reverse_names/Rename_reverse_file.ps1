# Define the path to the file
$file = 'G:\Admin\Desktop\Icons\Test\emaner_tseT'

# Get the file info
$fileInfo = Get-Item $file

# Get the base name and extension of the file
$baseName = $fileInfo.BaseName
$extension = $fileInfo.Extension

# Reverse the base name
$reversedBaseName = -join $baseName[($baseName.Length-1)..0]

# Construct the new file name
$newFileName = $reversedBaseName + $extension

# Rename the file
Rename-Item -Path $file -NewName $newFileName

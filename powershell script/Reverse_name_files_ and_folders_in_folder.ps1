

# Define the path to the folder
$folder = 'G:\Admin\Desktop\Icons\Test\Test_rename'

# Get all the files and folders in the folder
$items = Get-ChildItem $folder

# Loop through each item
foreach ($item in $items) {
    # Get the base name and extension of the item
    $baseName = $item.BaseName
    $extension = $item.Extension

    # Reverse the base name
    $reversedBaseName = -join $baseName[($baseName.Length-1)..0]

    # Construct the new item name
    $newItemName = $reversedBaseName + $extension

    # Rename the item
    Rename-Item -Path $item.FullName -NewName $newItemName
}

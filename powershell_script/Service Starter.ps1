$params = @{
  Name = "TestPowershell"
  BinaryPathName = "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe"
  DisplayName = "TestPowershell"
  StartupType = "Automatic"
  Description = "This is a test service."
}
New-Service @params


# "C:\Windows\notepad.exe"
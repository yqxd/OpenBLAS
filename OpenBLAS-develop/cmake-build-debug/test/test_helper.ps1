[Console]::InputEncoding = New-Object Text.UTF8Encoding $false
if (Test-Path $args[2]) { Remove-Item -Force $args[2] } 
$ErrorActionPreference = "Stop"
Get-Content $args[1] | & $args[0]
If ((Get-Content $args[2] | %{$_ -match "FATAL"}) -contains $true) {
echo Error
exit 1
} else {
exit 0
}

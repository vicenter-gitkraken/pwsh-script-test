[CmdletBinding()]
Param()
$passReturnCode = 0
$failReturnCode = 1
$foo = 1
if(1 -eq $foo) {
Write-Output "First condition"
Write-Verbose "Passed all the checks"
return $passReturnCode
exit
}
if(1 -ne $foo) {
    Write-Output "Second condition"
Write-Host "Missing commit delimeter ':'" -ForegroundColor Red
return $failReturnCode
exit
}

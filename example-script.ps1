[CmdletBinding()]
Param()
$passReturnCode = 0
$failReturnCode = 1
$foo = 1
if(0 -eq $foo) {
Write-Output "First condition"
Write-Verbose "Passed all the checks"
exit $passReturnCode
}

if(1 -eq $foo) {
    Write-Output "Second condition"
Write-Host "Missing commit delimeter ':'" -ForegroundColor Red
exit $failReturnCode
}

[CmdletBinding()]
Param([string] $commitFile)

$messageContent = Get-Content $commitFile
$passReturnCode = 0
$failReturnCode = 1

if($messageContent -like "*:*") {
Write-Verbose "Passed all the checks"
exit $passReturnCode
} else {
    Write-Host "Missing commit delimeter ':' in: "$messageContent -ForegroundColor Red
    exit $failReturnCode
}



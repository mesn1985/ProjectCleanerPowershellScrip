function PrintGreeting{
    [CmdletBinding()]
    param (
        [Parameter()]
        [ValidateSet('Hey','Hello','goodmorning','good day')]
        [string]$greeting
    )
    "Hello $greeting" | Write-Host

}

PrintGreeting "Hey"

try {
    PrintGreeting "yo"
}
catch {
    "Yo greeting caused an exception, because it is not part of the validate set" | Write-Host
}
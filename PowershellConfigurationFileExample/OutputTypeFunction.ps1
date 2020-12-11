function getCurrentExcutingScriptName{
    [OutputType([System.String])]
    [CmdletBinding()]
    param (
    )
    return ($MyInvocation.ScriptName | Split-Path -Leaf) 
}

getCurrentExcutingScriptName | Write-Host
function logObjectFactory{
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [String]
        $message,
        [Parameter()]
        [string]
        $source = "($MyInvocation.ScriptName | Split-Path -leaf):$($MyInvocation.ScriptLineNumber)",
        [Parameter()]
        [int]
        $logLevel = 1
    )
    return [PSCustomObject]@{
        'Time' = (Get-Date -Format 'MM-dd-yy HH:mm:sstt')
        'Message'  =  $message
        'Source' = $source
        'Severity' = $logLevel
    }
}
function logToCsvFile{
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [String]
        $filePath,

        [Parameter(Mandatory)]
        [psobject]
        $logObject 
    )
    
    $logObject | Export-Csv -Path $filePath -Append -NoTypeInformation
}

#Entry
$logObject = logObjectFactory "The Message" $MyInvocation.ScriptName 1

$filepath = (Get-Location).ToString() + "\csvLogFile.csv"

logToCsvFile $filepath $logObject

Import-Csv $filepath | Write-Host


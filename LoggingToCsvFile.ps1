function logObjectFactory {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [String]
        $message,
        [Parameter()]
        [string]
        $source,
        [Parameter()]
        [int]
        $logLevel = 1
    )
    return [PSCustomObject]@{
        'Time'     = (Get-Date -Format 'MM-dd-yy HH:mm:sstt')
        'Message'  = $message
        'Source'   = $myInvocation.ScriptName
        'Severity' = $logLevel
    }
}
function logToCsvFile {
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
$filepath = (Get-Location).ToString() + "\csvLogFile.csv"

$logObject = logObjectFactory -message "The Message" -loglevel 1 -source $myInvocation.ScriptName

logToCsvFile $filepath $logObject

Import-Csv $filepath | Write-Host



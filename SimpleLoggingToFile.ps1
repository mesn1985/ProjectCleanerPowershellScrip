
function IsFileCreatedInPath{
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [String]
        $pathToLogFile
    )
    return [System.IO.File]::Exists($pathToLogFile)
}

function EnsureThatLogFileExistsInPath{
    [CmdletBinding()]
    param (
        [Parameter(Mandatory,ValueFromPipeline)]
        [String]
        $pathToLogFile
    )
    if(-Not (IsFileCreatedInPath $pathToLogFile)){
        $fileName = Split-Path $pathToLogFile -leaf
        new-Item $fileName
        return $pathToLogFile
    }
    return $pathToLogFile
}
function WriteToLogFile {
    param (
        [Parameter(Mandatory,ValueFromPipeline)]
        [string]
        $pathToLogFile
        )
        Add-Content -Path $pathToLogFile -Value "This  line was logged"
}

[string]$logFilePath = (Get-Location).ToString() + "\logFile.log"

EnsureThatLogFileExistsInPath $logFilePath | WriteToLogFile



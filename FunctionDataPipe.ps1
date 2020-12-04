function GetParentFolderPath { 
    return $MyInvocation.ScriptName
}
function TraverseOneFolderUp {
    param (
        [Parameter(ValueFromPipeline,Mandatory)]
        [String]$pathName
    )
        return $pathName | Split-Path
}


Clear-Host #Just to make the printout clear
GetParentFolderPath| TraverseOneFolderUp | TraverseOneFolderUp | Write-Host
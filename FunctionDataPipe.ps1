
function SetDefaultPrintToOff(){
    filter Out-Default {}
}

function GetScriptFullPath { 
    return $MyInvocation.ScriptName
}
function TraverseUpTheFolderHierachy {
    param (
        [Parameter(ValueFromPipeline,Mandatory)]
        [String]$pathName,

        [Parameter()]
        [int] $levelsToTraveseUp
    )
    
    for([int]$i=0; $i -lt $levelsToTraveseUp; $i++ ){
        $pathName =  $pathName | Split-Path
    }

    return $pathName
}

#Entry
SetDefaultPrintToOff
GetScriptFullPath | TraverseUpTheFolderHierachy -levelsToTraveseUp 3
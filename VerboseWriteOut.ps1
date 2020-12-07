function AfunctionWhereVerboseCallsCanBeMde(){
    [CmdletBinding()]
    param (
        [Parameter()]
        [string]
        $messageToProcess
    )
    Write-Verbose -Message "Is  processing message {$messageToProcess}"
}
function CallFunctionWithoutVerbose {
    AfunctionWhereVerboseCallsCanBeMde "message that will not be displayed"
}
function CallFunctionWithVerboseMessage {
    AfunctionWhereVerboseCallsCanBeMde  "Message that is displayed as verbose"  -Verbose
}

#Entry
CallFunctionWithoutVerbose
CallFunctionWithVerboseMessage


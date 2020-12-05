param(
    [string]$greeting = "hello",
    [string]$to ="world",
    [int]$age = (Get-Date).year
    )

Write-Host "$greeting $to at age $age"

foreach($argument in $args){
    Write-Host $argument
}
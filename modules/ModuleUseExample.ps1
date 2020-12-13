#Requires -Modules ModuleExample
Import-Module .\ModuleExample

write-host "All paths from where modules can be imported" -ForegroundColor Yellow 
write-host ($env:PSModulePath -replace";","`n") -ForegroundColor Blue
Write-host "Note that the path for the example module is not represented.`nincluded module by name convention is not shown in the enviromentvariable"
Write-Host "To avoid using nameing convention on subfolders, modules should be moved to one of the displayed folders"

ExampleFunction4 | Write-Host
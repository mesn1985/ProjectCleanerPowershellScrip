function DoingSomeHeavyWork{
    Start-Sleep -Seconds 1
}


$numberOfHeavyWorkIteration = 10

for($iteration=0;$iteration -lt $numberOfHeavyWorkIteration;$iteration++){
    Write-Progress -Activity 'perfomring heavy work' -Status working -PercentComplete (($iteration/$numberOfHeavyWorkIteration)*100)
    DoingSomeHeavyWork
}

[System.Console]::WriteLine("Heavy work completed")
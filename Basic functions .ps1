function PrintNumberOneToTen{
    $intList = [System.Collections.ArrayList]@()

    For($i = 0 ; $i -lt 10; $i++){
        $intList.Add($i+1)
    }

    foreach($value in $intArray){
        Write-Host $value
    }

}
function GetGreeting {
    param (
        [Parameter(Mandatory)]
        [String]$Hello,
        [Parameter(Mandatory)]
        [String]$World
    )
    return $Hello+" "+$World
}

#Entry

# basic function call, No parameters
PrintNumberOneToTen

# function call with two parametes
GetGreeting 'hej' 'verden'

#Caputering functions return value
$returnedString = GetGreeting 'hej' 'verden'
Write-Host $returnedString



param(
    [Parameter(Mandatory)]
    [pscredential]$Credential
)

$userName = $Credential.UserName
$password = $Credential.Password

Write-Host "username is $userName. Password is Encryptced $password"

#Get unencrypted password
$cred = $Credential.GetNetworkCredential()
$userName = $cred.UserName
$password = $cred.Password

Write-Host "username is $userName. Password is unencrypted $password"

#Run the script  with  "UsernameAndPassword.ps1 -Credential (Get-Credential)", the Get credential will prompt for the credentials

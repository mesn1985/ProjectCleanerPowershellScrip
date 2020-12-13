New-SelfSignedCertificate -DnsName nonExsitingEmail@Mock.com -CertStoreLocation Cert:\CurrentUser\My -Type Codesigning

$certificatesFromStore = Get-ChildItem -Path Cert:\CurrentUser\My | Where-Object {$_.Subject -match "nonExsitingEmail@Mock.com"}

foreach($certificate in $certificatesFromStore){
    $certificate.Thumbprint | Write-Host
}
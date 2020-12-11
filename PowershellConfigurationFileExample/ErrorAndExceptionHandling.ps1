Get-Item -Path "Non existing path, will throw non terminating exception"
Get-Item -Path "Another Non existing path, will also throw non terminating exception"
"Is printed" | Write-Host

try{
Get-Item -Path "Non existing path, will now throw terminating exception" -ErrorAction Stop
"Is not printed" | Write-Host
}catch{
    Write-Warning -Message $_.Exception.Message
}
"Is printed" | Write-Host
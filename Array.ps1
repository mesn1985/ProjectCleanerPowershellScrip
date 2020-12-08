$microsoftlanguage = @(
    'C#',
    'F#',
    'Powershel Scripting langauge',
    'Visual basic',
    'Typescript',
    'Transact SQL'
)

foreach ($language in $microsoftlanguage) {
    $language | Write-Host 
}
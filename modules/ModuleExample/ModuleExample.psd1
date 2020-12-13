$manifest = @{
    Path = '.\ModuleExample\ModuleExample.psd1'
    RootModule = 'ModuleExample.psm1'
    Author = 'MESN1985'
    ModuleVersion = 0.1.0
    Description = 'An example modules to show the usage of modules in powershell'
    FunctionsToExport = @("ExampleFunction1","ExampleFunction2")
}

New-ModuleManifest  @manifest

# Moved the modules to $ENV:PSModulePath in order for the manifest to take effect
Describe 'basic test'{
    It 'a test  based  on boolean outcome that should be true'{
        $true | Should -Be $true
    }
    It 'a test  based  on boolean outcome that should be false'{
        $false | Should -Be $false
    }
}

Describe 'Testing for exisistence of a file'{
    It 'Testing the script file exist'{
        $MyInvocation.InvocationName | Should -Exist
    }
}
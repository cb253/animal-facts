BeforeAll {
    . $PSScriptRoot/source.ps1
}

Describe "Checking 'if' statements" {
    Context "First if statement" {
        It "The fact given variable should be false after loop is complete" {
            $userChoice = $null
            $factGiven | Should -Be $false
        }
    }
}

BeforeAll {
    . $PSScriptRoot/source.ps1
}

Describe "Checking dog fact url statements" {
    Context "Making sure Invoke-RestMethod is fething a valid url" {
        It "When the user chooses dog, dogFact var !== 'null' " {
            $userChoice.ToLower() = "d"
            $catFact | Should -Be $NotNull
        }
    }
}

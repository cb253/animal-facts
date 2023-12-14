BeforeAll {
    . $PSScriptRoot/source.ps1
}

Describe "Checking cat fact url statements" {
    Context "Making sure Invoke-RestMethod is fething a valid url" {
        It "When the user chooses cat, catFact var is NotNull " {
            $userChoice.ToLower() = "c"
            $catFact | Should -Be $NotNull
        }
    }
}

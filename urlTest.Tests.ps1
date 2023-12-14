BeforeAll {
    . $PSScriptRoot/source.ps1
}

Describe "Checking the url of rest methods" {

    Context "Checking catFact fetch request" {
        It "When the user chooses cat, catFact var is NotNull " {
            $userChoice.ToLower() = "c"
            $catFact | Should -Be $NotNull
        }
    }
    Context "Checking dogFact fetch request" {
        It "When the user chooses dog, dogFact var is NotNull " {
            $userChoice.ToLower() = "d"
            $catFact | Should -Be $NotNull
        }
    }
}




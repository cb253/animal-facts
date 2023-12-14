$catFactUrl = "https://catfact.ninja/fact"
$dogFactUrl = 'https://dogapi.dog/api/v2/facts?limit=1'

Clear-Host
Write-Host "Welcome to Animal Facts!"
$factGiven = $false
DO {
     if (!$factGiven) {
        $userChoice = Read-Host "`nGenerate [d] Dog or [c] Cat fact?"
        $factGiven = $true
        }        
    if ($userChoice.ToLower() -eq "d") {
        $dogFact = Invoke-RestMethod -Uri $dogFactUrl -Method Get 
            Clear-Host
            Write-Host $dogFact.data.attributes.body
            $factGiven = $false
        } elseif ($userChoice.ToLower() -eq "c") {
            $catFact = Invoke-RestMethod -Uri $catFactUrl -Method Get
            Clear-Host
            Write-Host $catFact.fact
            $factGiven = $false
        } elseif ($userChoice.ToLower() -eq "exit") {
            exit
        } else {
            Clear-Host
            Write-Host "Please select a valid option, or type exit quit"
            $factGiven = $false
        }
} Until ($userChoice.ToLower() -eq "exit" -or $userChoice.ToLower() -eq "n")
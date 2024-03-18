Import-Module posh-git, Terminal-Icons

oh-my-posh init pwsh --config 'C:\Users\jsmith\Downloads\monts-alt.json' | Invoke-Expression

$env:POSH_AZURE_ENABLED = $true
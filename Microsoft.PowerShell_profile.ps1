Import-Module posh-git, Terminal-Icons

$WinTermFolder = Get-ChildItem "$($Env:UserProfile)\appdata\local\packages" -Filter Microsoft.WindowsTerminal*
$OMPTheme = "$($WinTermFolder.FullName)\LocalState\SysOp.omp.json"

oh-my-posh init pwsh --config $OMPTheme | Invoke-Expression
oh-my-posh init powershell --config $OMPTheme | Invoke-Expression

$env:POSH_AZURE_ENABLED = $true
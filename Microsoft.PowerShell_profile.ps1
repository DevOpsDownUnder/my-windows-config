Import-Module posh-git, Terminal-Icons

$env:POSH_AZURE_ENABLED = $true

$WinTermFolder = Get-ChildItem "$($Env:UserProfile)\appdata\local\packages" -Filter Microsoft.WindowsTerminal*
$OMPTheme = "$($WinTermFolder.FullName)\LocalState\SysOp.omp.json"

if (Test-Path $OMPTheme) {
    $Shell = oh-my-posh get shell
    oh-my-posh init $Shell --config $OMPTheme | Invoke-Expression

} else {
    Write-Warning "Oh-my-posh theme file not found: $OMPTheme"
}
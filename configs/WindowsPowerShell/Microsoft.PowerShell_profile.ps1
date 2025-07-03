# oh-my-posh init pwsh | Invoke-Expression

# oh-my-posh prompt
# & ([ScriptBlock]::Create((oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\tokyo.omp.json" --print) -join "`n"))

# starship
Invoke-Expression (&starship init powershell)

# fish like behaviour
# Install-Module PSReadLine -AllowPrerelease
# Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History

# tab completion menu
Set-PSReadLineKeyHandler -Key Tab -Function Complete

# support long paths
# Set-ItemProperty 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'LongPathsEnabled' -Value 1

Set-ExecutionPolicy RemoteSigned

# git
New-Item -ItemType SymbolicLink -Target "$HOME\dotfiles\home\packages\headless-essentials\git\.gitconfig" -Path "$HOME\.gitconfig"

# glazewm
New-Item -ItemType SymbolicLink -Target "$HOME\dotfiles\win32\packages\.glzr" -Path "$HOME\.glzr"

# nvim - minimal setup
New-Item -ItemType SymbolicLink -Target "$HOME\dotfiles\win32\packages\nvim" -Path "$env:LOCALAPPDATA\nvim"

# powershell
New-Item -ItemType SymbolicLink -Target "$HOME\dotfiles\win32\packages\WindowsPowerShell" -Path "$HOME\OneDrive\Documents\WindowsPowerShell"

# vscode
New-Item -ItemType SymbolicLink -Target "$HOME\dotfiles\home\packages\gui-devel\vscode\User" -Path "$env:APPDATA\Code\User"

# wezterm
New-Item -ItemType SymbolicLink -Target "$HOME\dotfiles\home\packages\gui-devel\wezterm\wezterm" -Path "$HOME\.config\wezterm"

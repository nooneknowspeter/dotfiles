Set-ExecutionPolicy RemoteSigned

# git
New-Item -ItemType SymbolicLink -Target "$HOME\dotfiles\configs\.gitconfig" -Path "$HOME\.gitconfig"

# glazewm
New-Item -ItemType SymbolicLink -Target "$HOME\dotfiles\configs\.glzr" -Path "$HOME\.glzr"

# nvim - minimal setup
New-Item -ItemType SymbolicLink -Target "$HOME\dotfiles\configs\nvim" -Path "$env:LOCALAPPDATA\nvim"

# powershell
New-Item -ItemType SymbolicLink -Target "$HOME\dotfiles\configs\WindowsPowerShell" -Path "$HOME\OneDrive\Documents\WindowsPowerShell"

# vscode
New-Item -ItemType SymbolicLink -Target "$HOME\dotfiles\configs\Code" -Path "$env:APPDATA\Code"

# wezterm
New-Item -ItemType SymbolicLink -Target "$HOME\dotfiles\configs\wezterm" -Path "$HOME\.config\wezterm"

Set-ExecutionPolicy RemoteSigned

# git
New-Item -ItemType SymbolicLink -Target "$HOME\dotfiles\git\.gitconfig" -Path "$HOME\.gitconfig"

# glazewm
New-Item -ItemType SymbolicLink -Target "$HOME\dotfiles\.win32\.glzr" -Path "$HOME\.glzr"

# nvim - minimal setup
New-Item -ItemType SymbolicLink -Target "$HOME\dotfiles\.win32\nvim" -Path "$env:LOCALAPPDATA\nvim"

# powershell
New-Item -ItemType SymbolicLink -Target "$HOME\dotfiles\.win32\WindowsPowerShell" -Path "$HOME\OneDrive\Documents\WindowsPowerShell"

# vscode
New-Item -ItemType SymbolicLink -Target "$HOME\dotfiles\vscode\.config\Code\User" -Path "$env:APPDATA\Code\User"

# wezterm
New-Item -ItemType SymbolicLink -Target "$HOME\dotfiles\wezterm\.config\wezterm" -Path "$HOME\.config\wezterm"

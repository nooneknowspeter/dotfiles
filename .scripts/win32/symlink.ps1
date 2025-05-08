Set-ExecutionPolicy RemoteSigned

# alacritty
New-Item -ItemType SymbolicLink -Target "$HOME\dotfiles\alacritty\.config\alacritty" -Path "$env:APPDATA\alacritty"

# git
New-Item -ItemType SymbolicLink -Target "$HOME\git\.gitconfig" -Path "$HOME\.gitconfig"

# glazewm
New-Item -ItemType SymbolicLink -Target "$HOME\dotfiles\.win32\glazewm\.glzr" -Path "$HOME\.glzr"

# nvim - minimal setup
New-Item -ItemType SymbolicLink -Target "$HOME\dotfiles\.win32\nvim\.config\nvim\init.lua" -Path "$env:APPDATA\nvim\init.lua"

# powershell
New-Item -ItemType SymbolicLink -Target "$HOME\dotfiles\.win32\ps1\Microsoft.Powershell_profile.ps1" -Path "$HOME\OneDrive\Documents\WindowsPowerShell\Microsoft.Powershell_profile.ps1"

# vscode
New-Item -ItemType SymbolicLink -Target "$HOME\dotfiles\vscode\.config\Code\User\keybindings.json" -Path "$env:APPDATA\Code\User\keybindings.json" # vim-bindings

New-Item -ItemType SymbolicLink -Target "$HOME\dotfiles\vscode\.config\Code\User\settings.json" -Path "$env:APPDATA\Code\User\settings.json" # settings

# wezterm
New-Item -ItemType SymbolicLink -Target "$HOME\dotfiles\wezterm\.config\wezterm" -Path "$HOME\.config\wezterm"

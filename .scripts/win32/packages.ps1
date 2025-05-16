Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression

scoop bucket add main
scoop bucket add extras

scoop install btop
scoop install curl
scoop install btop
scoop install curl
scoop install fastfetch
scoop install git
scoop install lazydocker
scoop install lazygit
scoop install neovim
scoop install scrcpy
scoop install starship
scoop install virtualbox
scoop install vscode
scoop install wezterm
scoop install vcxsrv
scoop install yazi

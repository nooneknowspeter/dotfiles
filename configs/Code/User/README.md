# vscode config

my vscode essentials

![](https://i.imgur.com/M6eplva.png)

## installation

### linux

```
rm -rf ~/.config/Code/User/settings.json ~/.config/Code/User/keybindings.json

git clone https://github.com/nooneknowspeter/vscode.git ~/.config/Code/User/
```

### macos

```
rm -rf $HOME/Library/Application Support/User/setting.json $HOME/Library/Application Support/User/keybindings.json

$HOME/Library/Application Support/Code/User/
```

### windows

```
rm %APPDATA%\Code\User\settings.json

rm %APPDATA%\Code\User\settings.json

%APPDATA%\Code\User\
```

## extensions

- [docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)
- [better comments](https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments)
- [glassit](https://marketplace.visualstudio.com/items?itemName=s-nlf-fh.glassit)
- [icons](https://marketplace.visualstudio.com/items?itemName=tal7aouy.icons)
- [prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
- [todo highlights](https://marketplace.visualstudio.com/items?itemName=wayou.vscode-todo-highlight)
- [vscode remote containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
- [vscode remote explorer](https://marketplace.visualstudio.com/items?itemName=ms-vscode.remote-explorer)
- [vscode remote server](https://marketplace.visualstudio.com/items?itemName=ms-vscode.remote-server)
- [vscode remote ssh](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh)
- [vscode remote ssh edit](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh-edit)
- [vscode vim](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim)

```sh
code -r --install-extension aaron-bond.better-comments
code -r --install-extension davidanson.vscode-markdownlint
code -r --install-extension docker.docker
code -r --install-extension esbenp.prettier-vscode
code -r --install-extension felixzeller.markdown-oxide
code -r --install-extension github.github-vscode-theme
code -r --install-extension gitpod.gitpod-desktop
code -r --install-extension henrytsz.nvim
code -r --install-extension ms-azuretools.vscode-containers
code -r --install-extension ms-azuretools.vscode-docker
code -r --install-extension ms-kubernetes-tools.vscode-kubernetes-tools
code -r --install-extension ms-python.debugpy
code -r --install-extension ms-python.python
code -r --install-extension ms-python.vscode-pylance
code -r --install-extension ms-python.vscode-python-envs
code -r --install-extension ms-toolsai.jupyter
code -r --install-extension ms-toolsai.jupyter-keymap
code -r --install-extension ms-toolsai.jupyter-renderers
code -r --install-extension ms-toolsai.vscode-jupyter-cell-tags
code -r --install-extension ms-toolsai.vscode-jupyter-slideshow
code -r --install-extension ms-vscode-remote.remote-containers
code -r --install-extension ms-vscode-remote.remote-ssh
code -r --install-extension ms-vscode-remote.remote-ssh-edit
code -r --install-extension ms-vscode-remote.remote-wsl
code -r --install-extension ms-vscode.remote-explorer
code -r --install-extension ms-vscode.remote-server
code -r --install-extension oliverparaskos.fountain-lsp
code -r --install-extension piersdeseilligny.betterfountain
code -r --install-extension redhat.vscode-yaml
code -r --install-extension s-nlf-fh.glassit
code -r --install-extension streetsidesoftware.code-spell-checker
code -r --install-extension sumneko.lua
code -r --install-extension tal7aouy.icons
code -r --install-extension tek256.simple-dark
code -r --install-extension vincesalvino.dark-plus-black
code -r --install-extension wayou.vscode-todo-highlight

```

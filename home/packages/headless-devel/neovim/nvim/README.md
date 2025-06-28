# nooneknows neovim configuration / setup

![](https://github.com/nooneknowspeter/nvim/blob/main/public/Screenshot%202025-02-07%20004857.png)
![](https://github.com/nooneknowspeter/nvim/blob/main/public/Screenshot%202025-02-07%20005235.png)
![](https://github.com/nooneknowspeter/nvim/blob/main/public/Screenshot%202025-02-07%20004937.png)

## language support (dap, formatters, linters)

supports multiple languages including:

- C#
- C++
- CSS
- GLSL
- Go
- HTML
- JavaScript
- Lua
- Python
- Rust
- SQL
- TypeScript
- and more

## install neovim and dependencies

- [dotnet](https://dotnet.microsoft.com/en-us/)
- [homebrew](https://brew.sh/)
- [lazygit](https://github.com/jesseduffield/lazygit)
- [lua \<= v5.1.x](https://lua.org/)
- [neovim](https://github.com/neovim/neovim/blob/master/INSTALL.md#install-from-package/)
- [nerdfonts](https://www.nerdfonts.com/)
- [nodejs](https://nodejs.org/en/)
- [ohmypsh](https://github.com/jandedobbeleer/oh-my-posh)
- [python >= 3.8 \<= 3.12](https://www.python.org/)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [texlive (for latex)](https://www.tug.org/texlive/)
- [yarn](https://www.npmjs.com/package/yarn)

### debian / ubuntu

```sh
sudo apt upgrade
sudo apt update
sudo apt install build-essential
```

### arch

```sh
sudo pacman -Syu
sudo pacman -S base-devel
```

## install neovim configs

### linux / macos

```sh
rm -rf ~/.config/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim
git clone https://github.com/nooneknowspeter/nvim.git ~/.config/nvim && nvim
```

### windows

```sh
rm -Force $env:LOCALAPPDATA\nvim
rm -Force $env:LOCALAPPDATA\nvim-data
git clone https://github.com/nooneknowspeter/nvim.git $env:LOCALAPPDATA\nvim && nvim

```

### docker

```sh
docker run -w /root -it --rm alpine:latest sh -uelic '
  apk add git nodejs neovim ripgrep build-base wget --update
  git clone https://github.com/nooneknowspeter/nvim.git ~/.config/nvim
  nvim
  '
```

## updating

### updating nvim

```sh
brew update
upgrade neovim
```

### updating nvim packages

```
:Lazy sync
:MasonUpdate
:DapInstall <dap_name>
```

## nvim as git editor

```sh
git config --global core.editor "nvim"
```

## nvim as global unix editor

```sh
export EDITOR=nvim
```

## neovim plugins

[hash map of configured plugins](https://github.com/nooneknowspeter/nvim/blob/main/lazy-lock.json)

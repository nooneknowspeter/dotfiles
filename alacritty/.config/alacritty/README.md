# alacritty config / setup

![screenshot](https://github.com/nooneknowspeter/alacritty/blob/main/public/Screenshot%202025-01-25%20042147.png)
![screenshot](https://github.com/nooneknowspeter/alacritty/blob/main/public/Screenshot%202025-01-25%20042634.png)

## setup

```sh
rm -rf ~/.config/alacritty
git clone https://github.com/nooneknowspeter/alacritty ~/.config/alacritty
cd ~/.config/alacritty
git clone https://github.com/alacritty/alacritty-theme ./themes
```

```powershell
rm $env:APPDATA\alacritty
git clone https://github.com/nooneknowspeter/alacritty $env:APPDATA\alacritty
cd $env:APPDATA\alacritty
git clone https://github.com/alacritty/alacritty-theme .\themes
```

[themes](https://github.com/alacritty/alacritty-theme)

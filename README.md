# Table of Contents
* [Nvim config](#install-nvim-config)
* [VscodeVim Config](#vscodevim-config)
* [OhMyPosh](#install-ohmyposh)
* [Github Monospace Font (Neon)](#install-github-monospace-font-neon-from-the-nerd-repo)
* [Alacritty](#install-alacritty)
* [Wezterm](#install-wezterm)
* [Windows Terminal](#install-windows-terminal)
* [Taskbar Tools](#install-taskbar-tools)
* [Lunarvim](#install-lunarvim) 
* [fzf and bat](#install-fzf-and-bat) 

## install Nvim config 
copy the init.lua to
* windows - git clone https://github.com/Skardyy/.dotfiles/blob/main/init.lua "$env:LOCALAPPDATA/nvim"
* unix - git clone https://github.com/Skardyy/.dotfiles/blob/main/init.lua ~/.config/nvim

> \[!Note]
> * use `:LazySync` for reloading plugins
> * make sure to install the dependencies for the lsp

## VscodeVim config
* install [vscode-vim](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim) in vscode
* copy the following [vscode config](https://github.com/Skardyy/.dotfiles/blob/main/VscodeVim) into the json setting inside vscode

## Install OhMyPosh  
```pwsh
winget install JanDeDobbeleer.OhMyPosh -s winget
New-Item -Path $PROFILE -Type File -Force
oh-my-posh init pwsh | Invoke-Expression
```
* create a custom theme
```pwsh
notepad ~\AppData\Local\Programs\oh-my-posh\themes\myTheme.omp.json
```
* paste the [theme](https://github.com/Skardyy/.dotfiles/blob/main/myTheme.omp.json) in here
* finally change the shell file
example:
```pwsh
"oh-my-posh init pwsh --config '~\AppData\Local\Programs\oh-my-posh\themes\myTheme.omp.json' | Invoke-Expression" > $PROFILE
```

## install github monospace font (neon) from the nerd repo
* goto [nerd repo](https://github.com/ryanoasis/nerd-fonts/releases/latest)
* download the monaspace font
* install the neon mono font
* go to the shell config file and apply it

## install alacritty
* goto [alarcitty latest release](https://github.com/alacritty/alacritty/releases/latest)
* download and install it
* copy the [alarcitty.toml](https://github.com/Skardyy/.dotfiles/blob/main/alarcritty.toml) content into %APPDATA%\alacritty\alacritty.toml

## install wezterm
* goto [wezterm latest release](https://github.com/wez/wezterm/releases/latest)
* download and install it
* copy the [.wezterm.lua](https://github.com/Skardyy/.dotfiles/blob/main/.wezterm.lua) into the home dir (~)

## install windows-terminal
* install wt from [microsoft store](https://apps.microsoft.com/detail/9n0dx20hk701)
* open the settings.json and copy the [theme](https://github.com/Skardyy/.dotfiles/blob/main/windows-terminal) into it

## install taskbar tools
* install ttb from [microsoft store](https://apps.microsoft.com/detail/9pf4kz2vn4w9?hl=en-US&gl=US)
* install taskbarx zip from [github](https://github.com/ChrisAnd1998/TaskbarX/releases/latest)
* put the taskbarx app inside the startup apps (shell:startup)

## install lunarvim
* goto [lunarvim website](https://www.lunarvim.org/docs/installation)
* install all the prequisites
* to install mgwin-w64 follow this [guide](https://code.visualstudio.com/docs/cpp/config-mingw)
* finally edit the config file at %localappdata%\lvim\config.lua to match the [file](https://github.com/Skardyy/.dotfiles/blob/main/lunarvim-config.lua) in this repo, and do lvim to the init stage

## install fzf and bat
```pwsh
winget install fzf
winget install sharkdp.bat
```

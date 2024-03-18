## install packer

packer is used as a package manager
* window - git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
* unix - git clone --depth 1 https://github.com/wbthomason/packer.nvim\ ~/.local/share/nvim/site/pack/packer/start/packer.nvim

## install init.lua  
copy the init.lua to
* windows - git clone https://github.com/Skardyy/nvim-conf "$env:LOCALAPPDATA/nvim"
* unix - git clone https://github.com/Skardyy/nvim-conf ~/.config/nvim

#### Remakrs  
* use :PackerSync for installing all the plugins
* make sure to install the dependencies for the lsp
* make sure to put files inside folders, so the lsp wont load all the servers

## Install OhMyPosh  
```diff
winget install JanDeDobbeleer.OhMyPosh -s winget
New-Item -Path $PROFILE -Type File -Force
oh-my-posh init pwsh | Invoke-Expression
```
* create a custom theme
```diff
notepad ~\AppData\Local\Programs\oh-my-posh\themes\myTheme.omp.json
```
* paste the file in here
* finally change the shell file
example:
```diff
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
* copy the alarcitty.toml content into %APPDATA%\alacritty\alacritty.toml

## install wezterm
* goto [wezterm latest release](https://github.com/wez/wezterm/releases/latest)
* download and install it
* copy the .wezterm.lua into the home dir (~)

## install windows-terminal
* install wt from [microsoft store](https://apps.microsoft.com/detail/9n0dx20hk701)
* open the settings.json and copy the file into it

## install taskbar tools
* install ttb from [microsoft store](https://apps.microsoft.com/detail/9pf4kz2vn4w9?hl=en-US&gl=US)
* install taskbarx zip from [github](https://github.com/ChrisAnd1998/TaskbarX/releases/latest)
* put the taskbarx app inside the startup apps (eg shell:startup)

## install lunarvim
* goto [lunarvim website](https://www.lunarvim.org/docs/installation)
* install all the prequisites
* to install mgwin-w64 follow this [guide](https://code.visualstudio.com/docs/cpp/config-mingw)
* finally edit the config file at %localappdata%\lvim\config.lua to match the file in this repo, and do lvim to the init stage

## install fzf and bat
* winget install fzf
* winget install sharkdp.bat

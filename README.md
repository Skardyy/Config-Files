## install packer

packer is used as a package manager
* window - git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
* unix - git clone --depth 1 https://github.com/wbthomason/packer.nvim\ ~/.local/share/nvim/site/pack/packer/start/packer.nvim

## install init.lua  
copy the init.lua to
* windows - git clone https://github.com/Skardyy/nvim-conf "$env:LOCALAPPDATA/nvim"
* unix - git clone https://github.com/Skardyy/nvim-conf ~/.config/nvim

### Remakrs  
* use :PackerSync for installing all the plugins
* make sure to install the dependencies for the lsp
* make sure to put files inside folders, so the lsp wont load all the servers

## Install OhMyPosh  
```diff
winget install JanDeDobbeleer.OhMyPosh -s winget
New-Item -Path $PROFILE -Type File -Force
oh-my-posh init pwsh | Invoke-Expression
Get-PoshThemes
notepad $PROFILE
```
* put a theme inside the $profile file
* edit the code of the theme to be the json in the repo

## Install dracula theme for windows terminal  
* go to settings > defaults
* open the json file
* copy the json file into the colorschemes section
* change the theme

## Nerd Font  
* goto [Nerd font repo's latest release](https://github.com/ryanoasis/nerd-fonts/releases/latest)
* download the font you want (fira code is cool)
* select all and install
* go to windows terminal and change the font under settings > default > font face

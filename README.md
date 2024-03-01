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
```
* create a custom theme
```diff
notepad ~\AppData\Local\Programs\oh-my-posh\themes\myTheme.omp.json
```
* paste the file in here
* finally change the shell file
example:
```diff
notepad $profile
"oh-my-posh init pwsh --config 'C:\Users\meron\AppData\Local\Programs\oh-my-posh\themes\myTheme.omp.json' | Invoke-Expression" > $PROFILE
```

## install github monospace font (neon) 
* goto [Github monospace website](https://monaspace.githubnext.com)
* download the font
* install the neon font
* go to the shell config file and apply it

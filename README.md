# nvim lua.init personal configs

## install packer

packer is used as a package manager
* window - git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
* unix - git clone --depth 1 https://github.com/wbthomason/packer.nvim\ ~/.local/share/nvim/site/pack/packer/start/packer.nvim

## install init.lua

copy the init.lua to
* windows - ~/AppData/Local/nvim
* linux - ~/.config/nvim

### Remakrs

* use :PackerSync for installing all the plugins
* make sure to install nodeJs and the required packages for the lsp server

-- Ensure packer is installed
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd 'packadd packer.nvim'
end

-- Specify plugins
require('packer').startup(function()
    use 'wbthomason/packer.nvim' -- Packer can manage itself
    use "olimorris/onedarkpro.nvim" -- Theme
    use {
	    'kyazdani42/nvim-tree.lua',
	    requires = {'kyazdani42/nvim-web-devicons'}
    }-- File tree
    use 'neovim/nvim-lspconfig' -- Common configurations for LSP
    use 'hrsh7th/nvim-compe' -- Autocompletion
    use 'nvim-treesitter/nvim-treesitter' -- Syntax highlighting
    use 'dense-analysis/ale' -- Linting and fixing
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    } -- Statusline
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    } -- File explorer
    vim.cmd("colorscheme onedark")
end)

-- Additional configurations go here --
-- Languages --
local lspconfig = require('lspconfig')
lspconfig.pyright.setup {} --python, npm i pyright -g
-- Other --
require('lualine').setup()
require('nvim-tree').setup()
require('compe').setup{
	enabled = true;
	autocomplete = true;
	debug = false;
	min_length = 1;
	preselect = 'enable';
	throttle_time = 80;
	source_timeout = 200;
	incomplete_delay = 400;
	max_abbr_width = 100;
	max_kind_width = 100;
	max_menu_width = 100;
	documentation = true;

	source = {
		path = true;
		buffer = true;
		calc = true;
		nvim_lsp = true;
		nvim_lua = true;
		spell = true;
		tags = true;
		snippets_nvim = true;
		treesitter = true;
	};
}

-- Binds --
vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>to', '<cmd>NvimTreeOpen<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>tc', '<cmd>NvimTreeClose<CR>', {noremap = true, silent = true})


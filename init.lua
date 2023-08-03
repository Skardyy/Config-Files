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
    } -- File tree

    use 'neovim/nvim-lspconfig' -- lsp
    use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'} -- bufferline

    use 'hrsh7th/nvim-cmp' -- code completion
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source
    use 'hrsh7th/cmp-buffer' -- Buffer source

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    } -- Statusline

    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    } -- File explorer

    use {
    	'nvim-treesitter/nvim-treesitter',
    	run = ':TSUpdate'
    } -- Syntax highlighting

    use {
    	"jose-elias-alvarez/null-ls.nvim",
    	requires = { "nvim-lua/plenary.nvim" },
    } -- non lsp sources

    use {
  	'hrsh7th/vim-vsnip',
 	 requires = { 'hrsh7th/vim-vsnip-integ' }
    }

end)

-- Languages --
local lspconfig = require('lspconfig')
lspconfig.pyright.setup {} -- npm i pyright -g
lspconfig.rust_analyzer.setup {
  settings = {
    ['rust-analyzer'] = {}, -- rustup component add rust-analyzer
  },
}

-- Configs --
require('lualine').setup()
require('bufferline').setup{}
require('nvim-tree').setup()
require('nvim-treesitter.configs').setup {
  ensure_installed = {'python', 'rust', 'css', 'html', 'javascript', 'svelte',
                      'bash', 'typescript', 'lua', 'tsx',
	              'c_sharp', 'c', 'cpp'},
  highlight = {
    enable = true,
  },
}

local cmp = require('cmp')
cmp.setup{
  snippet = {
    expand = function(args) vim.fn["vsnip#anonymous"](args.body) end
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<Down>'] = cmp.mapping.select_next_item(),
    ['<Up>'] = cmp.mapping.select_prev_item(),
    ['<CR>'] = cmp.mapping.confirm({select = true}),
    ['<C-e>'] = cmp.mapping.close()
  }),
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
  }
}

local null_ls = require('null-ls')
null_ls.setup{
    sources = {
        null_ls.builtins.formatting.black,     -- Pip install black
        null_ls.builtins.formatting.rustfmt,   -- Rustup component add rustfmt
        null_ls.builtins.formatting.prettier,  -- npm i -g prettier
        null_ls.builtins.formatting.prettierd, -- idk lol
    },
}


-- Binds --
vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>to', '<cmd>NvimTreeOpen<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>tc', '<cmd>NvimTreeClose<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>e', '$', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>b', '0', { noremap = true })

-- Window --
vim.wo.number = true
vim.cmd("colorscheme onedark")
vim.opt.termguicolors = true

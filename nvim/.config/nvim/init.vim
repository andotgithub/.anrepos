" --- General 

let mapleader = " "



" --- Plugins

call plug#begin('~/.config/nvim/plugged')

" Others
Plug 'wbthomason/packer.nvim'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'bluz71/vim-nightfly-colors'
Plug 'preservim/vimux'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-fugitive'
Plug 'rafamadriz/friendly-snippets'
Plug 'github/copilot.vim'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'glepnir/lspsaga.nvim'
" General
Plug 'kyazdani42/nvim-web-devicons'                " Devicons
Plug 'nvim-lualine/lualine.nvim'                   " Status line
Plug 'akinsho/bufferline.nvim'                     " Buffers
Plug 'machakann/vim-highlightedyank'               " Highlight yanked text
Plug 'kyazdani42/nvim-tree.lua'                    " File explorer
Plug 'folke/tokyonight.nvim', { 'branch': 'main' } " Color scheme
" Lsp
Plug 'neovim/nvim-lspconfig'     
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind-nvim'
" Git
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'
" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

call plug#end()

lua require("andotlua.plugins-setup")
lua require("andotlua.core.options")
lua require("andotlua.core.keymaps")
lua require("andotlua.core.colorscheme")
lua require("andotlua.plugins.comment")
lua require("andotlua.plugins.nvim-tree")
lua require("andotlua.plugins.lualine")
lua require("andotlua.plugins.telescope")
lua require("andotlua.plugins.nvim-cmp")
lua require("andotlua.plugins.lsp.mason")
lua require("andotlua.plugins.lsp.lspsaga")
lua require("andotlua.plugins.lsp.lspconfig")
lua require("andotlua.plugins.lsp.null-ls")
lua require("andotlua.plugins.autopairs")
lua require("andotlua.plugins.treesitter")
lua require("andotlua.plugins.gitsigns")


" --- Colors




" --- Remaps



" --- Autocommands




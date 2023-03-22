" --- General 

let mapleader = " "

# set termguicolors
# set tabstop=4 
# set softtabstop=4
# set shiftwidth=4
# set expandtab
# set smartindent
# set number
# set numberwidth=1
# set relativenumber
# set signcolumn=yes
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
# set incsearch
# set nohlsearch
# set ignorecase
# set smartcase
# set nowrap
# set splitbelow
# set splitright
# set hidden
# set scrolloff=999
# set noshowmode
# set updatetime=250 
# set encoding=UTF-8
# set mouse=a


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

require("andotlua.plugins-setup")
require("andotlua.core.options")
require("andotlua.core.keymaps")
require("andotlua.core.colorscheme")
require("andotlua.plugins.comment")
require("andotlua.plugins.nvim-tree")
require("andotlua.plugins.lualine")
require("andotlua.plugins.telescope")
require("andotlua.plugins.nvim-cmp")
require("andotlua.plugins.lsp.mason")
require("andotlua.plugins.lsp.lspsaga")
require("andotlua.plugins.lsp.lspconfig")
require("andotlua.plugins.lsp.null-ls")
require("andotlua.plugins.autopairs")
require("andotlua.plugins.treesitter")
require("andotlua.plugins.gitsigns")


-- Colors

# set background=dark
# colorscheme tokyonight


" --- Remaps

# nnoremap <leader>h :wincmd h<Cr>
# nnoremap <leader>j :wincmd j<Cr>
# nnoremap <leader>k :wincmd k<Cr>
# nnoremap <leader>l :wincmd l<Cr>
# nnoremap <silent><leader>[ :BufferLineCyclePrev<Cr>
# nnoremap <silent><leader>] :BufferLineCycleNext<Cr>
# nnoremap <silent><leader>q :bdelete<Cr>


" --- Autocommands

" Remove vert split 
" https://www.reddit.com/r/vim/comments/effwku/transparent_vertical_bar_in_vim/
" https://gist.github.com/romainl/379904f91fa40533175dfaec4c833f2f
set fillchars=vert:\  " there is whitespace after the backslash
augroup RemoveVertSplit
    autocmd!
    autocmd BufEnter,ColorScheme * highlight VertSplit ctermfg=1 ctermbg=None cterm=None
augroup END
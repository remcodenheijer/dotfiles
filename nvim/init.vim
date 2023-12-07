set clipboard+=unnamedplus

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

inoremap jk <Esc>
vnoremap jk <Esc>

nnoremap H ^
nnoremap L $

" no swap file
set noswapfile

" save undo-trees in files
set undofile
set undodir=$HOME/.config/nvim/undo
set undolevels=10000
set undoreload=10000

set termguicolors

call plug#begin()
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'echasnovski/mini.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

colorscheme catppuccin-frappe

lua require('mini')
lua require('telescope')


syntax on
set splitright
set splitbelow
set autoindent
set backup
set backupdir=~/.backup
set expandtab
set linebreak
set nocompatible
set shiftwidth=2
set smartindent
set tabstop=2
set wrap
set laststatus=2
filetype plugin indent on
" Search
set ignorecase
set incsearch
set smartcase
set relativenumber
set nu
set hidden
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set incsearch
set scrolloff=8
set signcolumn=yes
set colorcolumn=80

" Automatically closing braces
inoremap {<CR> {<CR>}<Esc>ko
inoremap [<CR> [<CR>]<Esc>ko
inoremap (<CR> (<CR>)<Esc>ko
inoremap jk <Esc>
inoremap kj <Esc>


" Interface
set title
set ruler
set number!
set background=dark
colorscheme industry
set display+=lastline

" Others
set history=1000
set clipboard=unnamed
let g:rainbow_active=1

call plug#begin('~/.vim/plugged')
Plug 'nvim-telescope/telescope.nvim'
call plug#end()

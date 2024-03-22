syntax on
set splitright
set splitbelow
set autoindent
set backup
set backupdir=~/.backup
set expandtab
set linebreak
set nocompatible
set wrap
set laststatus=2
filetype plugin indent on
" Search
set ignorecase
set incsearch
set smartcase
set nohlsearch

" turn hybrid line numbers on
set number relativenumber
set nu rnu
set hidden
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set incsearch
set scrolloff=8
set signcolumn=yes
" set colorcolumn=100

" Automatically closing braces
inoremap {<CR> {<CR>}<Esc>ko
inoremap [<CR> [<CR>]<Esc>ko
inoremap (<CR> (<CR>)<Esc>ko
inoremap jk <Esc>
inoremap kj <Esc>


" Interface
set title
set ruler
set background=dark
set display+=lastline

" Others
set history=1000
set clipboard=unnamed
let g:rainbow_active=1

call plug#begin('~/.vim/plugged')
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'preservim/nerdtree'
call plug#end()

let g:gruvbox_invert_selection  = 0
colorscheme gruvbox
highlight Normal guibg=none

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup STEVEN
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END

" Shortcuts
cmap nt NERDTree

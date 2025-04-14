vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.o.splitright = true
vim.o.splitbelow = true
vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.cmd [[ set noswapfile ]]
vim.cmd [[ set termguicolors ]]

-- line numbers
vim.wo.number = true
vim.wo.relativenumber = true

vim.api.nvim_set_option("clipboard","unnamed")

-- lervag/vimtex
vim.g.vimtex_view_method = 'skim'
vim.g.vimtex_view_skim_sync = 1
vim.g.vimtex_view_general_viewer = 'skim'
vim.g.vimtex_view_general_options = '--unique file:@pdf#src:@line@tex'
vim.g.vimtex_compiler_method = 'latexmk'
vim.g.vimtex_rooter_enabled = 1


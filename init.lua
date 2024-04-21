vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.wo.relativenumber = true
vim.o.splitright = true
vim.o.splitbelow = true
--vim.opt.clipboard = 'unnamedplus'
vim.api.nvim_set_option("clipboard","unnamed")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require("core.options")
require("core.keymaps")
require("core.plugins")
require("core.all_plugins")


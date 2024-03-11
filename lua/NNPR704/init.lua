-- check that lazy is installed
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


-- leader has to be set before lazy 
vim.g.mapleader = " "

-- include all plugins
require("NNPR704.lazy")

-- all remaps
require("NNPR704.remap")


--
vim.wo.relativenumber = true

-- enable clipboard windows
vim.opt.clipboard="unnamedplus"

-- indenting
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- no swap files
vim.opt.swapfile = false



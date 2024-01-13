require("NNPR704.remap")
require("NNPR704.plugin")

--vim.cmd.colorscheme "catppuccin"
vim.cmd.colorscheme "rose-pine-main"

--
vim.wo.relativenumber = true

-- vim be good 
vim.g.vim_be_good_log_file = 1
vim.g.vim_be_good_save_statistics = 1
vim.g.vim_be_good_save_highscore = true

-- enable clipboard windows
vim.opt.clipboard="unnamedplus"

-- indenting
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

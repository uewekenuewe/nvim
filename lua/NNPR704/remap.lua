local builtin = require('telescope.builtin')


vim.g.mapleader = " "
vim.keymap.set("n","<leader>pv", vim.cmd.Ex)
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.keymap.set('n', '<c-s>', ":w!<CR>")
vim.keymap.set('n', '<c-q>', ":q!<CR>")

vim.keymap.set({'i','v','n'}, '<c-f>', ":/")
--vim.keymap.set({'i','v','n'}, '<c-s>', ":s/")

vim.keymap.set({'v','n'}, '<c-z>', ":u <CR>")

-- disable arrow keys
vim.keymap.set({'i','v','n'}, '<Up>','<Nop>')
vim.keymap.set({'i','v','n'}, '<Left>','<Nop>')
vim.keymap.set({'i','v','n'}, '<Right>','<Nop>')
vim.keymap.set({'i','v','n'}, '<Down>','<Nop>')

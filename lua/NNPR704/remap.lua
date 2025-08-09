
-- remaps
-- delete everything
vim.keymap.set("n", "<leader>dd", ":%d<CR>")
-- yank everything
vim.keymap.set("n", "<leader>yy", ":%y<CR>")
-- leave hotkeys
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<F3>", ":bd!<CR>")
-- save and quit 
vim.keymap.set('n', '<c-s>', ":w!<CR>")
vim.keymap.set('n', '<c-q>', ":q!<CR>")
-- search 
vim.keymap.set({ 'i', 'v', 'n' }, '<c-f>', ":/")

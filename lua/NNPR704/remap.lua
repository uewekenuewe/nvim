local builtin = require('telescope.builtin')

vim.g.mapleader = " "
-- Autocomplete some chars
vim.keymap.set("i", "\"", "\"\"<ESC>i")
vim.keymap.set("i", "(", "()<ESC>i")
vim.keymap.set("i", "[", "[]<ESC>i")

-- vimsp omnifunc for completion testing lsp server 
vim.keymap.set("n","<leader>i", vim.lsp.omnifunc)

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

vim.keymap.set({'i','v','n'}, '<leader>l',function ()
    vim.print("starting lsp server")
    vim.lsp.set_log_level(2)
    vim.lsp.start({
      name = "clb-lsp",
      cmd = {"C:\\Users\\derFe\\programming\\cbl-lsp\\target\\debug\\cbl-lsp.exe"},
      root_dir = vim.fs.dirname("C:\\Users\\derFe\\programming\\cbl-lsp\\"),
    })
end)

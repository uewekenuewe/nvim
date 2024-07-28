-- tab to escape due to my keyboard
vim.keymap.set({ "i", "n", "v" }, "<TAB>", "<ESC>")

-- Autocomplete some chars
--vim.keymap.set("i", "\"", "\"\"<ESC>i")
--vim.keymap.set("i", "(", "()<ESC>i")
--vim.keymap.set("i", "[", "[]<ESC>i")

-- vimsp omnifunc for completion testing lsp server
vim.keymap.set("n", "<leader>i", vim.lsp.omnifunc)

-- leave hotkeys
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<F4>", ":bd!<CR>")

--
vim.keymap.set('n', '<c-s>', ":w!<CR>")
vim.keymap.set('n', '<c-q>', ":q!<CR>")

vim.keymap.set({ 'i', 'v', 'n' }, '<c-f>', ":/")
--vim.keymap.set({'i','v','n'}, '<c-s>', ":s/")

vim.keymap.set({ 'v', 'n' }, '<c-z>', ":u <CR>")

-- disable arrow keys
vim.keymap.set({ 'i', 'v', 'n' }, '<Up>', '<Nop>')
vim.keymap.set({ 'i', 'v', 'n' }, '<Left>', '<Nop>')
vim.keymap.set({ 'i', 'v', 'n' }, '<Right>', '<Nop>')
vim.keymap.set({ 'i', 'v', 'n' }, '<Down>', '<Nop>')

-- hotkeys for telescope
local builtin = require 'telescope.builtin'
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- find stuff
-- if you on top a word find all words in buffer cursor does not change position
-- \\todo better way to do non movement
-- \\if multiple occurences cursor still moves
vim.keymap.set({ 'v', 'n' }, "<leader>fw", function()
    local _word = vim.fn.expand("<cword>")
    local _curs = vim.api.nvim_win_get_cursor(0)
    vim.cmd("/".._word)
    vim.api.nvim_input("N")
    vim.api.nvim_set_cursor(0,_curs)
end)

-- replace stuff
--vim.keymap.set({ 'v', 'n' }, "<leader>sw", ":s/"..vim.fn.expand("<cword>").."/")

-- tab and buffer management
-- new buffer stuff
vim.keymap.set({ 'n' }, "<leader>sv", ":vsplit new<CR>")
vim.keymap.set({ 'n' }, "<leader>sh", ":split new<CR>")

-- tmux navigation
vim.keymap.set('n', '<C-h>', '<cmd> TmuxNavigateLeft<CR>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<cmd> TmuxNavigateRight<CR>', { desc = 'Move focus to the rigth window' })
vim.keymap.set('n', '<C-j>', '<cmd> TmuxNavigateDown<CR>', { desc = 'Move focus to the down window' })
vim.keymap.set('n', '<C-k>', '<cmd> TmuxNavigateUp<CR>', { desc = 'Move focus to the up window' })
 --navigate between windows with hjkl
--vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
--vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
--vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
--vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

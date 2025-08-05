vim.g.mapleader = ' '
-- line numbers
vim.wo.relativenumber = true
-- enable clipboard windows
vim.opt.clipboard = 'unnamedplus'
-- Show which line your cursor is on
vim.opt.cursorline = true
-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10
-- indenting
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
-- no swap + SHA files
vim.opt.swapfile = false
vim.opt.shadafile = 'NONE'
-- Case-insensitive searching UNLESS \C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.o.signcolumn = "yes"
-- remaps
require('remap')

-- plugins
 
vim.pack.add({
    {src = "https://github.com/vague2k/vague.nvim"},
    {src = "https://github.com/echasnovski/mini.pick"},
})

require("mini.pick").setup({
{ window = { config = { border = 'double' } } }


})
-- hotkeys for telescope
vim.keymap.set('n', '<leader>ff', ":Pick files<CR>")
vim.keymap.set('n', '<leader>fh', ":Pick help<CR>")
--vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
--vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
--vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


vim.cmd("colorscheme vague")

-- lsp
-- LUA
vim.lsp.config['luals'] = {
    -- Command and arguments to start the server.
    cmd = { 'lua-language-server' },
    -- Filetypes to automatically attach to.
    filetypes = { 'lua' },
    -- Sets the 'workspace' to the directory where any of these files is found.
    -- Files that share a root directory will reuse the LSP server connection.
    -- Nested lists indicate equal priority, see |vim.lsp.Config|.
    root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },
    -- Specific settings to send to the server. The schema is server-defined.
    -- Example: https://raw.githubusercontent.com/LuaLS/vscode-lua/master/setting/schema.json
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
            }
        }
    }
}

vim.lsp.enable('luals')



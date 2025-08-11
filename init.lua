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

-- help help in full mode
vim.o.helpheight=99999

-- remaps
--require('remap')
-- splitting
vim.keymap.set("n", "<leader>sv", ":vnew<CR>")
vim.keymap.set("n", "<leader>sh", ":new<CR>")
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
-- general lsp remaps
vim.keymap.set({'n'}, '<leader>qf', function()
    vim.diagnostic.setqflist()
    vim.cmd("resize 5<CR>")
end)

PERMA_LSP_QF = false
vim.keymap.set({'n'}, '<leader>lqf', function()
    if(PERMA_LSP_QF) then
        PERMA_LSP_QF = false
        vim.print("lsp perma quickfix is off")
    else
        PERMA_LSP_QF = true
        vim.print("lsp perma quickfix is on")
    end
end)

-- remap for cobol sourounding with display
vim.keymap.set('n', '<leader>cdw', function()
    local current_word = vim.cmd('<cword><CR>')
    vim.print(current_word)

end)

--[[
--- `]d` jumps to the next diagnostic in the buffer. |]d-default|
- `[d` jumps to the previous diagnostic in the buffer. |[d-default|
- `]D` jumps to the last diagnostic in the buffer. |]D-default|
- `[D` jumps to the first diagnostic in the buffer. |[D-default|
- `<C-w>d` shows diagnostic at cursor in a floating window. |CTRL-W_d-default|

--]]
-- autocommands
-- if diagnostic event updates come put them into quickfix list 
vim.api.nvim_create_autocmd('DiagnosticChanged', {
    callback = function(args)
        local current_window = vim.api.nvim_get_current_win()
        if(PERMA_LSP_QF) then
            vim.diagnostic.setqflist()
            vim.cmd("resize 5<CR>")
            vim.api.nvim_set_current_win(current_window)
        end
    end,
})

-- plugins
vim.pack.add({
    {src = "https://github.com/vague2k/vague.nvim"},
    {src = "https://github.com/nvim-telescope/telescope.nvim"},
    {src = "https://github.com/nvim-lua/plenary.nvim"},
})

-- hotkeys for telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

require('telescope').setup{
    defaults = {
        layout_strategy = 'horizontal',
      layout_config = { height = 0.95 },
    },
}

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
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("",true),
            }
        }
    }
}

-- odin
vim.lsp.config['ols'] = {
    -- Command and arguments to start the server.
    cmd = { 'ols' },
    -- Filetypes to automatically attach to.
    filetypes = { 'odin' },
    -- Sets the 'workspace' to the directory where any of these files is found.
    -- Files that share a root directory will reuse the LSP server connection.
    -- Nested lists indicate equal priority, see |vim.lsp.Config|.
    root_markers = {  },
    -- Specific settings to send to the server. The schema is server-defined.
    -- Example: https://raw.githubusercontent.com/LuaLS/vscode-lua/master/setting/schema.json
    settings = {
   }
}

vim.lsp.enable('luals')
vim.lsp.enable('ols')




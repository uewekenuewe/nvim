require 'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = { "lua" },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,

    ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
    -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}


require 'nvim-treesitter.install'.compilers = { 'zig' }


local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.cobol = {
    install_info = {
        url = "https://github.com/uewekenuewe/tree-sitter-cobol", -- local path or git repo
        files = { "src/parser.c", "src/scanner.c" },          -- note that some parsers also require src/scanner.c or src/scanner.cc
        -- optional entries:
        branch = "main",                                      -- default branch in case of git repo if different from master
        generate_requires_npm = false,                        -- if stand-alone parser without npm dependencies
        requires_generate_from_grammar = false,               -- if folder contains pre-generated src/parser.c
    },
    filetype = "cbl",                                         -- if filetype does not match the parser name


}


parser_config.hiwo = {
    install_info = {
        url = "C:\\Users\\derFe\\programming\\tree-sitter-OWN", -- local path or git repo
        files = { "src/parser.c" },          -- note that some parsers also require src/scanner.c or src/scanner.cc
        -- optional entries:
        branch = "main",                                      -- default branch in case of git repo if different from master
        --generate_requires_npm = false,                        -- if stand-alone parser without npm dependencies
        --requires_generate_from_grammar = false,               -- if folder contains pre-generated src/parser.c
    },
    filetype = "hiwo",                                         -- if filetype does not match the parser name
}

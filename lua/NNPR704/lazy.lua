require("lazy").setup({
    'nvim-treesitter/nvim-treesitter',
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    'ryanoasis/vim-devicons',
    { 'VonHeikemen/lsp-zero.nvim', branch = 'v3.x' },
    { 'christoomey/vim-tmux-navigator', lazy=false },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },
-- colorscheme
    'shaunsingh/nord.nvim',
})

require("lazy").setup({
  -- themes
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000
  },
  "Biscuit-Colorscheme/nvim",
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
  -- code completion
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",
  "rafamadriz/friendly-snippets",
  "github/copilot.vim",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' }
  }
})

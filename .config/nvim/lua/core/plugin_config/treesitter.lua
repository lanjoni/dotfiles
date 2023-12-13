require("nvim-treesitter.configs").setup({
  ensure_installed = {"lua", "javascript", "go", "terraform", "rust", "elixir", "clojure"},
  highlight = { enable = true },
  indent = { enable = true },
})

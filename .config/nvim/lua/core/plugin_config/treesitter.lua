require("nvim-treesitter.configs").setup({
  ensure_installed = {"lua", "crystal", "javascript", "go", "terraform", "rust", "elixir", "clojure", "nix", "scala", "yaml", "json", "tsx", "typescript", "zig"},
  highlight = { enable = true },
  indent = { enable = true },
})

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.crystal = {
  install_info = {
    url = "https://github.com/keidax/tree-sitter-crystal", -- local path or git repo
    -- files = {"src/parser.c"}, -- note that some parsers also require src/scanner.c or src/scanner.cc
    files = {"src/parser.c", "src/scanner.c"}, -- note that some parsers also require src/scanner.c or src/scanner.cc
    -- optional entries:
    branch = "main", -- default branch in case of git repo if different from master
    generate_requires_npm = false, -- if stand-alone parser without npm dependencies
    requires_generate_from_grammar = true, -- if folder contains pre-generated src/parser.c
  },
  filetype = "cr", -- if filetype does not match the parser name
}

vim.treesitter.language.register("crystal", "cr")

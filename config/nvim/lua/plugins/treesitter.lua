-- [nfnl] fnl/plugins/treesitter.fnl
local function _1_()
  local treesitter = require("nvim-treesitter")
  return treesitter.install({"bash", "clojure", "commonlisp", "dockerfile", "elixir", "fennel", "go", "html", "java", "javascript", "typescript", "json", "lua", "markdown", "nix", "ocaml", "rust", "yaml", "zig"})
end
return {{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate", config = _1_, lazy = false}}

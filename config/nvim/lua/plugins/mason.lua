-- [nfnl] Compiled from fnl/plugins/mason.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  local mason = require("mason")
  return mason.setup()
end
local function _2_()
  local mason_lspconfig = require("mason-lspconfig")
  return mason_lspconfig.setup({ensure_installed = {"clojure_lsp", "fennel_language_server", "lua_ls"}})
end
return {{"williamboman/mason.nvim", config = _1_, lazy = false}, {"williamboman/mason-lspconfig.nvim", config = _2_, lazy = false}}

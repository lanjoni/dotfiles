-- [nfnl] Compiled from fnl/plugins/conform.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  local conform = require("conform")
  return conform.setup({formatters_by_ft = {clojure = {"cljfmt"}, fennel = {"fnlfmt"}, javascript = {"prettierd", "prettier", stop_after_first = true}, lua = {"stylua"}}})
end
return {{"stevearc/conform.nvim", opts = {}, config = _1_}}

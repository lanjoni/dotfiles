-- [nfnl] Compiled from fnl/plugins/lint.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  local lint = require("lint")
  local lint_augroup = vim.api.nvim_create_augroup("lint", {clear = true})
  lint.linters_by_ft = {clojure = {"clj-kondo"}, javascript = {"eslint_d"}}
  local function _2_()
    return lint.try_lint()
  end
  vim.api.nvim_create_autocmd({"BufEnter", "BufWritePost", "InsertLeave"}, {callback = _2_, group = lint_augroup})
  local function _3_()
    return lint.try_lint()
  end
  return vim.keymap.set("n", "<leader>ll", _3_, {desc = "Trigger linting for current file"})
end
return {{"mfussenegger/nvim-lint", opts = {}, event = {"BufReadPre", "BufNewFile"}, config = _1_}}

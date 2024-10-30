-- [nfnl] Compiled from fnl/plugins/conjure.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local nvim = autoload("nvim")
local function _2_()
  vim.cmd({cmd = "command", args = {"-nargs=1", "Cjc", "ConjureConnect", "<args>"}, bang = true})
  vim.cmd({cmd = "command", args = {"-nargs=1", "Cjss", "ConjureShadowSelect", "<args>"}, bang = true})
  nvim.g["conjure#mapping#doc_word"] = "K"
  nvim.g["conjure#log#strip_ansi_escape_sequences_line_limit"] = 1
  nvim.g["conjure#client#clojure#nrepl#eval#auto_require"] = true
  nvim.g["conjure#client#clojure#nrepl#connection#auto_repl#enabled"] = false
  nvim.g["conjure#client#clojure#nrepl#test#current_form_names"] = {"deftest", "defflow", "defspec", "describe"}
  local function _3_()
    local buffer = vim.api.nvim_get_current_buf()
    vim.diagnostic.enable(false, {bufnr = buffer})
    vim.g.conjure_baleia.automatically(buffer)
    return vim.api.nvim_buf_set_option(buffer, "undolevels", ( - 1))
  end
  return vim.api.nvim_create_autocmd({"BufWinEnter"}, {callback = _3_, pattern = "conjure-log-*"})
end
return {{"Olical/conjure", branch = "master", init = _2_}}

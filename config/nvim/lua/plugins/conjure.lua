-- [nfnl] fnl/plugins/conjure.fnl
local function _1_()
  vim.cmd({cmd = "command", args = {"-nargs=1", "Cjc", "ConjureConnect", "<args>"}, bang = true})
  vim.cmd({cmd = "command", args = {"-nargs=1", "Cjss", "ConjureShadowSelect", "<args>"}, bang = true})
  vim.g["conjure#mapping#doc_word"] = "K"
  vim.g["conjure#log#strip_ansi_escape_sequences_line_limit"] = 1
  vim.g["conjure#client#clojure#nrepl#eval#auto_require"] = true
  vim.g["conjure#client#clojure#nrepl#connection#auto_repl#enabled"] = false
  vim.g["conjure#client#clojure#nrepl#test#current_form_names"] = {"deftest", "defflow", "defspec", "describe"}
  local function _2_()
    local buffer = vim.api.nvim_get_current_buf()
    vim.diagnostic.enable(false, {bufnr = buffer})
    vim.g.conjure_baleia.automatically(buffer)
    return vim.api.nvim_buf_set_option(buffer, "undolevels", ( - 1))
  end
  return vim.api.nvim_create_autocmd({"BufWinEnter"}, {callback = _2_, pattern = "conjure-log-*"})
end
return {{"Olical/conjure", branch = "main", init = _1_}}

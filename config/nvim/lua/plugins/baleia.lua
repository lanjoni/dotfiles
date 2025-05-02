-- [nfnl] fnl/plugins/baleia.fnl
local function _1_()
  vim.g.conjure_baleia = require("baleia").setup({line_starts_at = 3})
  local augroup = vim.api.nvim_create_augroup("ConjureBaleia", {clear = true})
  local function _2_()
    return vim.g.conjure_baleia.once(vim.api.nvim_get_current_buf())
  end
  vim.api.nvim_create_user_command("BaleiaColorize", _2_, {bang = true})
  return vim.api.nvim_create_user_command("BaleiaLogs", vim.g.conjure_baleia.logger.show, {bang = true})
end
return {{"m00qek/baleia.nvim", version = "*", config = _1_, lazy = false}}

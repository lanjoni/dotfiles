-- [nfnl] fnl/plugins/baleia.fnl
local function _1_()
  local baleia = require("baleia")
  local conjure_baleia = baleia.setup({line_starts_at = 3})
  vim.g.conjure_baleia = conjure_baleia
  local function _2_()
    return conjure_baleia.once(vim.api.nvim_get_current_buf())
  end
  vim.api.nvim_create_user_command("BaleiaColorize", _2_, {bang = true})
  return vim.api.nvim_create_user_command("BaleiaLogs", conjure_baleia.logger.show, {bang = true})
end
return {{"m00qek/baleia.nvim", commit = "1b25eac", pin = true, config = _1_, lazy = false}}

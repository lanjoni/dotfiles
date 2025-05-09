-- [nfnl] fnl/plugins/theme.fnl
local function _1_()
  local tairiki = require("tairiki")
  tairiki.setup({code_style = {keywords = "italic"}})
  vim.cmd("colorscheme tairiki")
  return vim.api.nvim_set_hl(0, "NonText", {fg = "#282828"})
end
return {{"deparr/tairiki.nvim", branch = "legacy", priority = 1000, config = _1_, lazy = false}}

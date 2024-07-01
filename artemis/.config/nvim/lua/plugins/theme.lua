-- [nfnl] Compiled from fnl/plugins/theme.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  do
    local lackluster = require("lackluster")
    lackluster.setup({tweak_background = {normal = "#000000", telescope = "#000000", menu = "#000000", popup = "#000000"}})
  end
  return vim.cmd("colorscheme lackluster")
end
return {{"slugbyte/lackluster.nvim", priority = 1000, dependencies = {"rktjmp/lush.nvim", "nvim-tree/nvim-web-devicons"}, config = _1_, lazy = false}}

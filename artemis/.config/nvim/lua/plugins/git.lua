-- [nfnl] Compiled from fnl/plugins/git.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  local gitsigns = require("gitsigns")
  return gitsigns.setup({})
end
return {{"tpope/vim-fugitive"}, {"lewis6991/gitsigns.nvim", config = _1_}}

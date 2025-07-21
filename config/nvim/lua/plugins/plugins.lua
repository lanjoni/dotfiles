-- [nfnl] fnl/plugins/plugins.fnl
local function _1_()
  local gitsigns = require("gitsigns")
  return gitsigns.setup({})
end
return {{"tpope/vim-fugitive"}, {"lewis6991/gitsigns.nvim", config = _1_}, {"numToStr/Comment.nvim", opts = {toggler = {line = "<leader>cc", block = "<leader>cb"}, opleader = {line = "<leader>cc", block = "<leader>cb"}, extra = {above = "<leader>cO", below = "<leader>co", eol = "<leader>cA"}}}, {"bakpakin/fennel.vim", lazy = true, ft = {"fennel"}}, {"bakpakin/janet.vim", lazy = true, ft = {"janet"}}}

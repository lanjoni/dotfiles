-- [nfnl] Compiled from fnl/plugins/plugins.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  local gitsigns = require("gitsigns")
  return gitsigns.setup({})
end
return {{"github/copilot.vim", lazy = false}, {"tpope/vim-dispatch"}, {"clojure-vim/vim-jack-in"}, {"radenling/vim-dispatch-neovim"}, {"tpope/vim-fugitive"}, {"lewis6991/gitsigns.nvim", config = _1_}, {"numToStr/Comment.nvim", opts = {toggler = {line = "<leader>cc", block = "<leader>cb"}, opleader = {line = "<leader>cc", block = "<leader>cb"}, extra = {above = "<leader>cO", below = "<leader>co", eol = "<leader>cA"}}}, {"bakpakin/fennel.vim", lazy = true, ft = {"fennel"}}, {"bakpakin/janet.vim", lazy = true, ft = {"janet"}}}

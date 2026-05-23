-- [nfnl] fnl/plugins/tmux.fnl
local function _1_()
  local tmux = require("tmux")
  return tmux.setup({copy_sync = {redirect_to_clipboard = true}})
end
return {{"aserowy/tmux.nvim", config = _1_}, {"christoomey/vim-tmux-navigator", cmd = {TmuxNavigateLeft = "TmuxNavigateDown", TmuxNavigateUp = "TmuxNavigateRight"}, keys = {{"<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>"}, {"<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>"}, {"<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>"}, {"<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>"}, {"<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>"}}, lazy = false}}

-- [nfnl] Compiled from fnl/plugins/nvimtree.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local nvim = autoload("nvim")
local function _2_()
  local nvim_tree = require("nvim-tree")
  nvim_tree.setup({sort_by = "case_sensitive", view = {width = 30}, renderer = {group_empty = true}, filters = {dotfiles = true}})
  nvim.set_keymap("n", "<c-n>", ":NvimTreeFindFile<CR>", {noremap = false})
  return nvim.set_keymap("n", "<leader>n", ":NvimTreeToggle<CR>", {noremap = false})
end
return {{"nvim-tree/nvim-tree.lua", priority = 1000, dependencies = {"nvim-tree/nvim-web-devicons"}, config = _2_, lazy = false}}

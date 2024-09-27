-- [nfnl] Compiled from fnl/plugins/barbar.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local nvim = autoload("nvim")
local function _2_()
  local barbar = require("barbar")
  return barbar.setup({sidebar_filetypes = {NvimTree = true}})
end
local function _3_()
  vim.g.barbar_auto_setup = false
  nvim.set_keymap("n", "<leader>hh", ":BufferPrevious<CR>", {noremap = false})
  nvim.set_keymap("n", "<leader>ll", ":BufferNext<CR>", {noremap = false})
  nvim.set_keymap("n", "<C-C-i>", ":BufferNext<CR>", {noremap = false})
  return nvim.set_keymap("n", "<leader>k", ":BufferClose<CR>", {noremap = false})
end
return {{"romgrk/barbar.nvim", opts = {}, dependencies = {"lewis6991/gitsigns.nvim", "nvim-tree/nvim-web-devicons"}, config = _2_, init = _3_}}

-- [nfnl] Compiled from fnl/config/init.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local nvim = autoload("nvim")
local core = autoload("nfnl.core")
nvim.set_keymap("n", "<space>", "<nop>", {noremap = true})
nvim.set_keymap("n", "<c-k>", ":wincmd k<CR>", {noremap = false})
nvim.set_keymap("n", "<c-j>", ":wincmd j<CR>", {noremap = false})
nvim.set_keymap("n", "<c-h>", ":wincmd h<CR>", {noremap = false})
nvim.set_keymap("n", "<c-l>", ":wincmd l<CR>", {noremap = false})
nvim.set_keymap("n", "<leader>h", ":nohlsearch<CR>", {noremap = false})
do
  local options = {expandtab = true, tabstop = 2, shiftwidth = 2, softtabstop = 2, relativenumber = true, completeopt = "menuone,noselect", ignorecase = true, smartcase = true, clipboard = "unnamedplus", number = true, ruler = true, signcolumn = "number"}
  for option, value in pairs(options) do
    core.assoc(nvim.o, option, value)
  end
end
return {}

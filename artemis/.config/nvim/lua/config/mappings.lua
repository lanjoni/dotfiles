-- [nfnl] Compiled from fnl/config/mappings.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local nvim = autoload("nvim")
nvim.set_keymap("n", "<space>", "<nop>", {noremap = true})
nvim.set_keymap("n", "<c-k>", ":wincmd k<CR>", {noremap = false})
nvim.set_keymap("n", "<c-j>", ":wincmd j<CR>", {noremap = false})
nvim.set_keymap("n", "<c-h>", ":wincmd h<CR>", {noremap = false})
nvim.set_keymap("n", "<c-l>", ":wincmd l<CR>", {noremap = false})
return nvim.set_keymap("n", "<leader>h", ":nohlsearch<CR>", {noremap = false})

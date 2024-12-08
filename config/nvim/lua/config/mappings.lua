-- [nfnl] Compiled from fnl/config/mappings.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local nvim = autoload("nvim")
nvim.set_keymap("n", "<space>", "<nop>", {noremap = true})
nvim.set_keymap("n", "<CR>", ":noh<CR><CR>", {noremap = true})
nvim.set_keymap("n", "<C-w>T", ":tab split<CR>", {noremap = true, silent = true})
nvim.set_keymap("t", "<esc><esc>", "<c-\\><c-n>", {noremap = true})
nvim.set_keymap("n", "<c-k>", ":wincmd k<CR>", {noremap = false})
nvim.set_keymap("n", "<c-j>", ":wincmd j<CR>", {noremap = false})
nvim.set_keymap("n", "<c-h>", ":wincmd h<CR>", {noremap = false})
nvim.set_keymap("n", "<c-l>", ":wincmd l<CR>", {noremap = false})
nvim.set_keymap("n", "<leader>h", ":nohlsearch<CR>", {noremap = false})
nvim.set_keymap("n", "<leader>ll", ":bnext<CR>", {noremap = true})
nvim.set_keymap("n", "<C-C-i>", ":bnext<CR>", {noremap = true})
nvim.set_keymap("n", "<leader>hh", ":bprev<CR>", {noremap = true})
nvim.set_keymap("n", "<leader>k", ":bdelete<CR>", {noremap = true})
local function clear_hidden_buffers()
  for _, buffer in pairs(vim.fn.getbufinfo()) do
    if (buffer.hidden == 1) then
      vim.cmd.bd(buffer.bufnr)
    else
    end
  end
  return nil
end
return vim.keymap.set("n", "<Leader>bd", clear_hidden_buffers, {noremap = true, silent = false})

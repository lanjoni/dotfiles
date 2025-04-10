-- [nfnl] Compiled from fnl/config/mappings.fnl by https://github.com/Olical/nfnl, do not edit.
vim.keymap.set("n", "<space>", "<nop>", {noremap = true})
vim.keymap.set("n", "<CR>", ":noh<CR><CR>", {noremap = true})
vim.keymap.set("n", "<C-w>T", ":tab split<CR>", {noremap = true, silent = true})
vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>", {noremap = true})
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>", {noremap = false})
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>", {noremap = false})
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>", {noremap = false})
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>", {noremap = false})
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>", {noremap = false})
vim.keymap.set("n", "<leader>ll", ":bnext<CR>", {noremap = true})
vim.keymap.set("n", "<C-C-i>", ":bnext<CR>", {noremap = true})
vim.keymap.set("n", "<leader>hh", ":bprev<CR>", {noremap = true})
vim.keymap.set("n", "<leader>k", ":bdelete<CR>", {noremap = true})
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

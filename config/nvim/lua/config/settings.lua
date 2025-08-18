-- [nfnl] fnl/config/settings.fnl
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local str = autoload("nfnl.string")
local core = autoload("nfnl.core")
vim.api.nvim_create_autocmd({"FocusGained", "BufEnter"}, {pattern = {"*"}, command = "checktime"})
vim.api.nvim_create_autocmd({"FileType"}, {pattern = {"rust"}, command = "setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab"})
vim.api.nvim_create_autocmd({"FileType"}, {pattern = {"go"}, command = "setlocal tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab"})
do
  local options = {expandtab = true, tabstop = 2, shiftwidth = 2, softtabstop = 2, colorcolumn = "120", completeopt = "menuone,noselect", errorbells = true, ignorecase = true, smartcase = true, clipboard = "unnamedplus", list = true, listchars = str.join(",", {"tab:\226\150\182-", "trail:\226\128\162", "extends:\194\187", "precedes:\194\171", "eol:\194\172"}), undofile = true, splitbelow = true, splitright = true, hlsearch = true, number = true, ruler = true, signcolumn = "yes:1", statuscolumn = "%=%l %s", backup = false, cursorline = false, relativenumber = false, swapfile = false, wrap = false}
  for option, value in pairs(options) do
    core.assoc(vim.o, option, value)
  end
end
return {}

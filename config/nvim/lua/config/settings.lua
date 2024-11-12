-- [nfnl] Compiled from fnl/config/settings.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local nvim = autoload("nvim")
local str = autoload("nfnl.string")
local core = autoload("nfnl.core")
do
  local options = {expandtab = true, tabstop = 2, shiftwidth = 2, softtabstop = 2, completeopt = "menuone,noselect", errorbells = true, ignorecase = true, smartcase = true, clipboard = "unnamedplus", list = true, listchars = str.join(",", {"tab:\226\150\182-", "trail:\226\128\162", "extends:\194\187", "precedes:\194\171", "eol:\194\172"}), undofile = true, splitbelow = true, splitright = true, hlsearch = true, number = true, ruler = true, signcolumn = "yes:1", statuscolumn = "%=%l %s", backup = false, cursorline = false, relativenumber = false, swapfile = false, wrap = false}
  for option, value in pairs(options) do
    core.assoc(nvim.o, option, value)
  end
end
return {}

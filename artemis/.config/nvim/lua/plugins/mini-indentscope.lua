-- [nfnl] Compiled from fnl/plugins/mini-indentscope.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local nvim = autoload("nvim")
local function _2_()
  local mini_indentscope = require("mini.indentscope")
  return mini_indentscope.setup({symbol = "\226\148\130", options = {try_as_border = true}})
end
return {{"echasnovski/mini.indentscope", config = _2_}}

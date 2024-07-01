-- [nfnl] Compiled from fnl/plugins/nvim-autotag.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local nvim = autoload("nvim")
local function _2_()
  local ts_autotag = require("nvim-ts-autotag")
  return ts_autotag.setup({opts = {enable_close = true, enable_rename = true, enable_close_on_slash = false}})
end
return {{"windwp/nvim-ts-autotag", config = _2_}}

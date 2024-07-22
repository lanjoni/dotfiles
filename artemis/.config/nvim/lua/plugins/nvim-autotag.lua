-- [nfnl] Compiled from fnl/plugins/nvim-autotag.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  local ts_autotag = require("nvim-ts-autotag")
  return ts_autotag.setup({opts = {enable_close = true, enable_rename = true, enable_close_on_slash = false}})
end
return {{"windwp/nvim-ts-autotag", config = _1_}}

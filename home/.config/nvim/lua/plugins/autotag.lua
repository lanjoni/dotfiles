-- [nfnl] fnl/plugins/autotag.fnl
local function _1_()
  local ts_autotag = require("nvim-ts-autotag")
  return ts_autotag.setup({opts = {enable_close = true, enable_rename = true, enable_close_on_slash = false}})
end
return {{"windwp/nvim-ts-autotag", config = _1_}}

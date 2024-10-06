-- [nfnl] Compiled from fnl/plugins/mini-indentscope.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  local mini_indentscope = require("mini.indentscope")
  return mini_indentscope.setup({symbol = "\226\148\130", options = {try_as_border = true}})
end
return {{"echasnovski/mini.indentscope", config = _1_}}

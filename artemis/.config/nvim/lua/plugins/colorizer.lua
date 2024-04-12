-- [nfnl] Compiled from fnl/plugins/colorizer.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  local colorizer = require("colorizer")
  return colorizer.setup()
end
return {{"norcalli/nvim-colorizer.lua", priority = 1000, config = _1_, lazy = false}}

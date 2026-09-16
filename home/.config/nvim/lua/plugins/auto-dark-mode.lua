-- [nfnl] fnl/plugins/auto-dark-mode.fnl
local function _1_()
  if (vim.g.colors_name ~= "lackluster") then
    return vim.cmd("colorscheme lackluster")
  else
    return nil
  end
end
local function _3_()
  if (vim.g.colors_name ~= "lackluster-day") then
    return vim.cmd("colorscheme lackluster-day")
  else
    return nil
  end
end
return {{"f-person/auto-dark-mode.nvim", opts = {set_dark_mode = _1_, set_light_mode = _3_, update_interval = 1000, fallback = "dark"}, lazy = false}}

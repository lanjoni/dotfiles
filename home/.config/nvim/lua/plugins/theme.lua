-- [nfnl] fnl/plugins/theme.fnl
local function dark_mode_3f()
  return ("Dark" == vim.trim(vim.fn.system({"defaults", "read", "-g", "AppleInterfaceStyle"})))
end
local function set_initial_theme()
  local dark_3f = dark_mode_3f()
  local _1_
  if dark_3f then
    _1_ = "dark"
  else
    _1_ = "light"
  end
  vim.api.nvim_set_option_value("background", _1_, {})
  local _3_
  if dark_3f then
    _3_ = "lackluster"
  else
    _3_ = "lackluster-day"
  end
  return vim.cmd(("colorscheme " .. _3_))
end
return {{"lanjoni/lackluster.nvim", priority = 1000, branch = "feat/lackluster-day-variant", config = set_initial_theme, lazy = false}}

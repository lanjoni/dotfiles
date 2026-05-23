-- [nfnl] fnl/plugins/theme.fnl
local function _1_()
  local theme = require("kanagawa")
  local background = "#0D0D0D"
  local foreground = "#DCD7BA"
  local dim_foreground = "#181816"
  local telescope_border_foreground = "#2A2A37"
  local telescope_title_foreground = "#957FB8"
  local function _2_(_)
    return {Normal = {bg = background, fg = foreground}, CursorColumn = {bg = background}, CursorLine = {bg = background}, CursorLineNr = {bg = background}, DiagnosticSignError = {bg = background}, DiagnosticSignWarn = {bg = background}, DiagnosticSignInfo = {bg = background}, DiagnosticSignHint = {bg = background}, FoldColumn = {bg = background}, GitSignsAdd = {bg = background}, GitSignsChange = {bg = background}, GitSignsDelete = {bg = background}, GitSignsTopdelete = {bg = background}, GitSignsChangedelete = {bg = background}, GitSignsUntracked = {bg = background}, LineNr = {bg = background}, NonText = {bg = background, fg = dim_foreground}, SignColumn = {bg = background}, StatusLine = {bg = background}, StatusLineNC = {bg = background}, TelescopeNormal = {bg = background}, TelescopePreviewNormal = {bg = background}, TelescopeResultsNormal = {bg = background}, TelescopePromptNormal = {bg = background}, TelescopeBorder = {bg = background, fg = telescope_border_foreground}, TelescopePreviewBorder = {bg = background, fg = telescope_border_foreground}, TelescopeResultsBorder = {bg = background, fg = telescope_border_foreground}, TelescopePromptBorder = {bg = background, fg = telescope_border_foreground}, TelescopeTitle = {bg = background, fg = telescope_title_foreground}, TelescopePreviewTitle = {bg = background, fg = telescope_title_foreground}, TelescopeResultsTitle = {bg = background, fg = telescope_title_foreground}, TelescopePromptTitle = {bg = background, fg = telescope_title_foreground}, TelescopePromptPrefix = {bg = background, fg = telescope_title_foreground}, WinSeparator = {bg = background, fg = dim_foreground}}
  end
  theme.setup({undercurl = true, commentStyle = {italic = false}, keywordStyle = {italic = false}, statementStyle = {bold = true}, terminalColors = true, colors = {palette = {}, theme = {wave = {}, lotus = {}, dragon = {}, all = {}}}, overrides = _2_, theme = "dragon", background = {dark = "dragon", light = "lotus"}, compile = false, dimInactive = false})
  return vim.cmd("colorscheme kanagawa-dragon")
end
return {{"rebelot/kanagawa.nvim", priority = 1000, dependencies = {"nvim-tree/nvim-web-devicons"}, config = _1_, lazy = false}}

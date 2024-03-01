-- [nfnl] Compiled from fnl/plugins/theme.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local nvim = autoload("nvim")
local function _2_()
  local theme = require("kanagawa")
  local theme_util = require("kanagawa.colors")
  local function _3_(colors)
    return {Normal = {bg = "#0D1014", fg = "#DCD7BA"}, FoldColumn = {bg = "#16161D"}, SignColumn = {bg = "#16161D"}, LineNr = {bg = "#16161D"}, CursorColumn = {bg = "#16161D"}, CursorLine = {bg = "#16161D"}, CursorLineNr = {bg = "#16161D"}, DiagnosticSignError = {bg = "#16161D"}, DiagnosticSignWarn = {bg = "#16161D"}, DiagnosticSignInfo = {bg = "#16161D"}, DiagnosticSignHint = {bg = "#16161D"}}
  end
  theme.setup({undercurl = true, commentStyle = {italic = true}, functionStyle = {}, keywordStyle = {italic = true}, statementStyle = {bold = true}, typeStyle = {}, terminalColors = true, colors = {palette = {}, theme = {wave = {}, lotus = {}, dragon = {}, all = {}}}, overrides = _3_, theme = "wave", background = {dark = "wave", light = "lotus"}, dimInactive = false, transparent = false, compile = false})
  return vim.cmd("colorscheme kanagawa")
end
return {{"rebelot/kanagawa.nvim", priority = 1000, dependencies = {"nvim-tree/nvim-web-devicons"}, config = _2_, lazy = false}}

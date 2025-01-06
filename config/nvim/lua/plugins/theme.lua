-- [nfnl] Compiled from fnl/plugins/theme.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  local kanagawa = require("kanagawa")
  local function _2_()
    return {Normal = {bg = "#0D1014", fg = "#DCD7BA"}}
  end
  return kanagawa.setup({undercurl = true, commentStyle = {italic = true}, functionStyle = {}, keywordStyle = {italic = true}, statementStyle = {bold = true}, typeStyle = {}, terminalColors = true, colors = {theme = {all = {ui = {bg_gutter = "none"}}}}, overrides = _2_, theme = "wave", background = {dark = "wave", light = "lotus"}, compile = false, dimInactive = false, transparent = false})
end
local function _3_()
  local tairiki = require("tairiki")
  tairiki.setup({code_style = {keywords = "italic"}})
  return vim.cmd("colorscheme tairiki")
end
return {{"rebelot/kanagawa.nvim", priority = 1000, dependencies = {"nvim-tree/nvim-web-devicons"}, config = _1_, lazy = false}, {"deparr/tairiki.nvim", priority = 1000, config = _3_, lazy = false}}

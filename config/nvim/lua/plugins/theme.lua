-- [nfnl] fnl/plugins/theme.fnl
local function _1_()
  local rose_pine = require("rose-pine")
  return rose_pine.setup({variant = "moon", styles = {transparency = true, italic = false}})
end
local function _2_()
  local kanagawa = require("kanagawa")
  local function _3_()
    return {Normal = {bg = "#0D1014", fg = "#DCD7BA"}}
  end
  return kanagawa.setup({undercurl = true, commentStyle = {italic = true}, functionStyle = {}, keywordStyle = {italic = true}, statementStyle = {bold = true}, typeStyle = {}, terminalColors = true, colors = {theme = {all = {ui = {bg_gutter = "none"}}}}, overrides = _3_, theme = "wave", background = {dark = "wave", light = "lotus"}, compile = false, dimInactive = false, transparent = false})
end
local function _4_()
  local tairiki = require("tairiki")
  tairiki.setup({code_style = {keywords = "italic"}})
  vim.cmd("colorscheme tairiki")
  return vim.api.nvim_set_hl(0, "NonText", {fg = "#282828"})
end
return {{"erikbackman/brightburn.vim", priority = 1000, lazy = false}, {"rose-pine/neovim", name = "rose-pine", priority = 1000, config = _1_, lazy = false}, {"rebelot/kanagawa.nvim", priority = 1000, dependencies = {"nvim-tree/nvim-web-devicons"}, config = _2_, lazy = false}, {"deparr/tairiki.nvim", priority = 1000, commit = "a278d7ce634ee18dcf20e63cb245d1df4985980a", config = _4_, lazy = false}}

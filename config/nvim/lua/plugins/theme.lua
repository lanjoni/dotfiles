-- [nfnl] Compiled from fnl/plugins/theme.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  local theme = require("tokyonight")
  local theme_util = require("tokyonight.util")
  local function _2_(colors)
    colors.bg_statusline = theme_util.darken(colors.bg_dark, 0.5)
    return nil
  end
  local function _3_(highlight, colors)
    highlight.String = {fg = colors.green2}
    highlight.TelescopeNormal = {bg = colors.bg_statusline, fg = colors.fg_dark}
    highlight.TelescopeBorder = {bg = colors.bg_statusline, fg = colors.fg_dark}
    highlight.NvimTreeNormal = {bg = colors.bg_statusline, fg = colors.fg_dark}
    highlight.NvimTreeNormalNC = {bg = colors.bg_statusline, fg = colors.fg_dark}
    highlight.NvimTreeWinSeparator = {bg = colors.bg_statusline, fg = colors.bg_dark}
    highlight.FloatBorder = {bg = colors.bg_statusline, fg = colors.fg_dark}
    highlight.ColorColumn = {bg = colors.bg_statusline, fg = colors.fg_dark}
    highlight.Pmenu = {bg = colors.bg_statusline, fg = colors.fg_dark}
    highlight.NonText = {fg = theme_util.lighten(colors.bg, 0.9)}
    return nil
  end
  return theme.setup({style = "night", styles = {comments = {italic = true}, floats = "dark", functions = {}, keywords = {italic = true}, sidebars = "dark", variables = {}}, on_colors = _2_, on_highlights = _3_, terminal_colors = true})
end
local function _4_()
  do
    local lackluster = require("lackluster")
    lackluster.setup({tweak_color = {lack = "#888888", green = "#636363"}, tweak_background = {normal = "#0A0A0A", telescope = "#0A0A0A", menu = "#0A0A0A", popup = "#0A0A0A", lualine = "#0A0A0A"}, tweak_highlight = {["@keyword"] = {italic = true}, spellcap = {link = "normal", overwrite = true, undercurl = false}}, tweak_ui = {disable_undercurl = true, enable_end_of_buffer = true}})
  end
  return vim.cmd("colorscheme lackluster-hack")
end
return {{"ramojus/mellifluous.nvim", priority = 1000, lazy = false}, {"zenbones-theme/zenbones.nvim", priority = 1000, dependencies = {"rktjmp/lush.nvim", "nvim-tree/nvim-web-devicons"}, lazy = false}, {"folke/tokyonight.nvim", priority = 1000, dependencies = {"nvim-tree/nvim-web-devicons"}, config = _1_, lazy = false}, {"slugbyte/lackluster.nvim", priority = 1000, dependencies = {"rktjmp/lush.nvim", "nvim-tree/nvim-web-devicons"}, config = _4_, lazy = false}}

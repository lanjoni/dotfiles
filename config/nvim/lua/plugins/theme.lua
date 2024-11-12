-- [nfnl] Compiled from fnl/plugins/theme.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  return vim.opt.rtp:append((vim.fn.stdpath("data") .. "/lazy/onehalf/vim"))
end
local function _2_()
  local rose_pine = require("rose-pine")
  return rose_pine.setup({variant = "moon", styles = {transparency = true}, dim_inactive_windows = false})
end
local function _3_()
  local theme = require("tokyonight")
  local theme_util = require("tokyonight.util")
  local function _4_(colors)
    colors.bg_statusline = theme_util.darken(colors.bg_dark, 0.5)
    return nil
  end
  local function _5_(highlight, colors)
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
  return theme.setup({style = "night", styles = {comments = {italic = true}, floats = "dark", functions = {}, keywords = {italic = true}, sidebars = "dark", variables = {}}, on_colors = _4_, on_highlights = _5_, terminal_colors = true})
end
local function _6_()
  do
    local lackluster = require("lackluster")
    lackluster.setup({tweak_highlight = {["@keyword"] = {bold = true, italic = true, overwrite = true}, ["@function"] = {link = "@keyword", overwrite = true}}, tweak_background = {normal = "#000000", telescope = "#000000", menu = "#000000", popup = "#000000", lualine = "#000000"}})
  end
  return vim.cmd("colorscheme zenwritten")
end
return {{"maxmx03/solarized.nvim", priority = 1000, lazy = false}, {"mosaab2020/custom-nord.nvim", priority = 1000, lazy = false}, {"ramojus/mellifluous.nvim", priority = 1000, lazy = false}, {"Lokaltog/vim-monotone", priority = 1000, lazy = false}, {"fxn/vim-monochrome", priority = 1000, lazy = false}, {"ewilazarus/preto", priority = 1000, lazy = false}, {"andreasvc/vim-256noir", priority = 1000, lazy = false}, {"darkvoid-theme/darkvoid.nvim", priority = 1000, lazy = false}, {"killitar/obscure.nvim", priority = 1000, lazy = false}, {"mellow-theme/mellow.nvim", priority = 1000, lazy = false}, {"nyoom-engineering/oxocarbon.nvim", priority = 1000, lazy = false}, {"blazkowolf/gruber-darker.nvim", priority = 1000, lazy = false}, {"kvrohit/rasmus.nvim", priority = 1000, lazy = false}, {"dgox16/oldworld.nvim", priority = 1000, lazy = false}, {"zenbones-theme/zenbones.nvim", priority = 1000, dependencies = {"rktjmp/lush.nvim", "nvim-tree/nvim-web-devicons"}, lazy = false}, {"sonph/onehalf", priority = 1000, config = _1_, lazy = false}, {"rose-pine/neovim", name = "rose-pine", priority = 1000, dependencies = {"rktjmp/lush.nvim", "nvim-tree/nvim-web-devicons"}, config = _2_, lazy = false}, {"folke/tokyonight.nvim", priority = 1000, dependencies = {"nvim-tree/nvim-web-devicons"}, config = _3_, lazy = false}, {"slugbyte/lackluster.nvim", priority = 1000, dependencies = {"rktjmp/lush.nvim", "nvim-tree/nvim-web-devicons"}, config = _6_, lazy = false}}

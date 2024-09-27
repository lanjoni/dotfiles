-- [nfnl] Compiled from fnl/plugins/theme.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  local lackluster = require("lackluster")
  return lackluster.setup({tweak_background = {normal = "#000000", telescope = "#000000", menu = "#000000", popup = "#000000", lualine = "#000000"}})
end
local function _2_()
  local kanagawa_paper = require("kanagawa-paper")
  return kanagawa_paper.setup({undercurl = true, keywordStyle = {bold = true, italic = true}})
end
local function _3_()
  local kanagawa = require("kanagawa")
  return kanagawa.setup({undercurl = true, keywordStyle = {bold = true, italic = true}})
end
local function _4_()
  local catppuccin = require("catppuccin")
  return catppuccin.setup({flavour = "mocha"})
end
local function _5_()
  local rose_pine = require("rose-pine")
  return rose_pine.setup({variant = "moon", disable_background = true})
end
local function _6_()
  local theme = require("tokyonight")
  local theme_util = require("tokyonight.util")
  local function _7_(colors)
    colors.bg_statusline = theme_util.darken(colors.bg_dark, 0.5)
    return nil
  end
  local function _8_(highlight, colors)
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
  return theme.setup({style = "night", styles = {comments = {italic = true}, floats = "dark", functions = {}, keywords = {italic = true}, sidebars = "dark", variables = {}}, on_colors = _7_, on_highlights = _8_, terminal_colors = true})
end
local function _9_()
  do
    local monokai_pro = require("monokai-pro")
    monokai_pro.setup({filter = "pro"})
  end
  return vim.cmd("colorscheme lackluster")
end
return {{"slugbyte/lackluster.nvim", priority = 1000, dependencies = {"rktjmp/lush.nvim", "nvim-tree/nvim-web-devicons"}, config = _1_, lazy = false}, {"sho-87/kanagawa-paper.nvim", priority = 1000, dependencies = {"rktjmp/lush.nvim", "nvim-tree/nvim-web-devicons"}, config = _2_, lazy = false}, {"rebelot/kanagawa.nvim", priority = 1000, dependencies = {"rktjmp/lush.nvim", "nvim-tree/nvim-web-devicons"}, config = _3_, lazy = false}, {"catppuccin/nvim", name = "catppuccin", priority = 1000, dependencies = {"rktjmp/lush.nvim", "nvim-tree/nvim-web-devicons"}, config = _4_, lazy = false}, {"rose-pine/neovim", name = "rose-pine", priority = 1000, dependencies = {"rktjmp/lush.nvim", "nvim-tree/nvim-web-devicons"}, config = _5_, lazy = false}, {"embark-theme/vim", name = "embark", priority = 1000, dependencies = {"rktjmp/lush.nvim", "nvim-tree/nvim-web-devicons"}, lazy = false}, {"sainnhe/gruvbox-material", priority = 1000, dependencies = {"rktjmp/lush.nvim", "nvim-tree/nvim-web-devicons"}, lazy = false}, {"folke/tokyonight.nvim", priority = 1000, dependencies = {"nvim-tree/nvim-web-devicons"}, config = _6_, lazy = false}, {"sainnhe/sonokai", priority = 1000, dependencies = {"rktjmp/lush.nvim", "nvim-tree/nvim-web-devicons"}, lazy = false}, {"ramojus/mellifluous.nvim", priority = 1000, lazy = false}, {"loctvl842/monokai-pro.nvim", priority = 1000, dependencies = {"rktjmp/lush.nvim", "nvim-tree/nvim-web-devicons"}, config = _9_, lazy = false}}

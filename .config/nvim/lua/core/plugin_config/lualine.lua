local colors = require("kanagawa.colors").setup()

local background = "#16161d"
local kanagawa = {
  normal = {
    a = { bg = colors.oniViolet, fg = colors.bg_dark },
    b = { bg = background, fg = colors.oniViolet },
    c = { bg = background, fg = colors.fg },
  },

  insert = {
    a = { bg = colors.autumnGreen, fg = colors.bg_dark },
    b = { bg = background, fg = colors.autumnGreen },
  },

  command = {
    a = { bg = colors.boatYellow2, fg = colors.bg_dark },
    b = { bg = background, fg = colors.boatYellow2 },
  },

  visual = {
    a = { bg = colors.crystalBlue, fg = colors.bg_dark },
    b = { bg = background, fg = colors.crystalBlue },
  },

  replace = {
    a = { bg = colors.autumnRed, fg = colors.bg_dark },
    b = { bg = background, fg = colors.autumnRed },
  },

  inactive = {
    a = { bg = colors.bg_status, fg = colors.crystalBlue },
    b = { bg = colors.bg_status, fg = colors.fujiGray, gui = "bold" },
    c = { bg = colors.bg_status, fg = colors.fujiGray },
  },
}

if vim.g.kanagawa_lualine_bold then
  for _, mode in pairs(kanagawa) do
    mode.a.gui = "bold"
  end
end

-- prompt colours
local grey14 = colors.sumiInk0
local grey15 = colors.sumiInk1
local grey16 = colors.sumiInk0

require("kanagawa").setup({
  overrides = {
    TelescopePromptPrefix = { bg = grey14 },
    TelescopePromptNormal = { bg = grey14 },
    TelescopePromptTitle = { fg = grey14 },
    TelescopePromptBorder = { bg = grey14, fg = grey14 },

    TelescopeResultsNormal = { bg = grey15 },
    TelescopeResultsBorder = { bg = grey15, fg = grey15 },
    TelescopeResultsTitle = { fg = grey15 },

    TelescopePreviewNormal = { bg = grey16 },
    TelescopePreviewBorder = { bg = grey16, fg = grey16 },
    TelescopePreviewTitle = { fg = grey16 },

    Visual = { bg = "#2d2f3d" },
  },
})

local M = {}

M.setup = function()
  require("lualine").setup({
    extensions = {
      "nvim-tree",
      "fzf",
      "fugitive",
    },
    options = {
      icons_enabled = false,
      component_separators = "",
      theme = kanagawa,
      disabled_filetypes = { "DiffviewFiles", "fzf", "DiffviewFileHistory" },
      -- section_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },
      globalstatus = true,
    },
    sections = {
      lualine_a = {
        {
          "mode",
          fmt = string.lower,
        },
      },
      lualine_b = {},
      lualine_c = {
        {
          "filename",
          color = { bg = background },
        },
      },
      lualine_x = {
        {
          "filetype",
          color = { bg = background },
        },
      },
      lualine_y = {
        "diff",
        "branch",
      },
    },
  })
end

return M

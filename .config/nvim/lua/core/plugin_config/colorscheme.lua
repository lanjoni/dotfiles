require('kanagawa').setup({
    compile = false,             -- enable compiling the colorscheme
    undercurl = true,            -- enable undercurls
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = true},
    statementStyle = { bold = true },
    typeStyle = {},
    transparent = false,         -- do not set background color
    dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
    terminalColors = true,       -- define vim.g.terminal_color_{0,17}
    colors = {                   -- add/modify theme and palette colors
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
    },
    overrides = function(colors) -- add/modify highlights
        return {
            -- NormalFloat = { bg = "none" },
            -- FloatBorder = { bg = "none" },
            -- FloatTitle = { bg = "none" }, 
            Normal = { bg = "#0D1014", fg = "#DCD7BA" },
            FoldColumn = { bg = "#16161D" },
            SignColumn = { bg = "#16161D" },
            LineNr = { bg = "#16161D" },
            CursorColumn = { bg = "#16161D" },
            CursorLine = { bg = "#16161D" },
            CursorLineNr = { bg = "#16161D" },
            DiagnosticSignError = { bg = "#16161D" },
            DiagnosticSignWarn = { bg = "#16161D" },
            DiagnosticSignInfo = { bg = "#16161D" },
            DiagnosticSignHint = { bg = "#16161D" },
        }
    end,
    theme = "wave",              -- Load "wave" theme when 'background' option is not set
    background = {               -- map the value of 'background' option to a theme
        dark = "wave",           -- try "dragon" !
        light = "lotus"
    },
})

vim.cmd.colorscheme "kanagawa"

vim.o.termguicolors = true

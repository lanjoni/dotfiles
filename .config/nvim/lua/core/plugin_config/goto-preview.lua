local map = require("core.plugin_config.utils.map")

local M = {}

M.setup = function()
  -- peek window
  require("goto-preview").setup({
    border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
    width = 80,
    dismiss_on_move = false,
    post_open_hook = function(bufnr)
      local function maplocal(mode, l, r, opts)
        opts = opts or {}
        opts.buffer = bufnr
        vim.keymap.set(mode, l, r, opts)
      end

      maplocal(
        "n",
        "<Esc>",
        ":lua require('goto-preview').close_all_win()<CR>",
        { silent = true }
      )

      maplocal(
        "n",
        "o",
        ":vsplit | lua require('goto-preview').close_all_win()<CR>",
        { silent = true }
      )
    end,
  })

  map(
    "n",
    "gp",
    ":lua require('goto-preview').goto_preview_definition()<CR>",
    { silent = true }
  )
end

return M


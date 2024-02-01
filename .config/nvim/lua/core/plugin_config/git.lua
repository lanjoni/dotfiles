local M = {}

M.setup = function()
  -- Link to github/gitlab
  require("gitlinker").setup({
    opts = {
      print_url = false,
    },
    mappings = "<leader>gy",
  })

  -- Diff page
  local cb = require("diffview.config").diffview_callback

  require("diffview").setup({
    diff_binaries = false, -- Show diffs for binaries
    enhanced_diff_hl = true, -- See ':h diffview-config-enhanced_diff_hl'
    use_icons = false, -- Requires nvim-web-devicons
    icons = {
      -- Only applies when use_icons is true.
      folder_closed = "",
      folder_open = "",
    },
    signs = {
      fold_closed = "",
      fold_open = "",
    },
    file_panel = {
      listing_style = "tree", -- One of 'list' or 'tree'
      tree_options = {
        -- Only applies when listing_style is 'tree'
        flatten_dirs = true, -- Flatten dirs that only contain one single dir
        folder_statuses = "only_folded", -- One of 'never', 'only_folded' or 'always'.
      },
    },
    file_history_panel = {
      -- log_options = {
      --   max_count = 256, -- Limit the number of commits
      --   follow = false, -- Follow renames (only for single file)
      --   all = false, -- Include all refs under 'refs/' including HEAD
      --   merges = false, -- List only merge commits
      --   no_merges = false, -- List no merge commits
      --   reverse = false, -- List commits in reverse order
      -- },
    },
    default_args = {
      -- Default args prepended to the arg-list for the listed commands
      DiffviewOpen = {},
      DiffviewFileHistory = {},
    },
    hooks = {
      diff_buf_win_enter = function(bufnr)
        require("gitsigns").detach(bufnr)
      end,
      diff_buf_read = function()
        vim.opt_local.signcolumn = "no"
      end,
    }, -- See ':h diffview-config-hooks'
    key_bindings = {
      disable_defaults = false, -- Disable the default key bindings
      -- The `view` bindings are active in the diff buffers, only when the current
      -- tabpage is a Diffview.
      view = {
        ["<tab>"] = cb("select_next_entry"), -- Open the diff for the next file
        ["<s-tab>"] = cb("select_prev_entry"), -- Open the diff for the previous file
        ["gf"] = cb("goto_file"), -- Open the file in a new split in previous tabpage
        ["<C-w><C-f>"] = cb("goto_file_split"), -- Open the file in a new split
        ["<C-w>gf"] = cb("goto_file_tab"), -- Open the file in a new tabpage
        ["<leader>e"] = cb("focus_files"), -- Bring focus to the files panel
        ["<leader>b"] = cb("toggle_files"), -- Toggle the files panel.
      },
      file_panel = {
        ["j"] = cb("next_entry"), -- Bring the cursor to the next file entry
        ["k"] = cb("prev_entry"), -- Bring the cursor to the previous file entry.
        ["<cr>"] = cb("select_entry"), -- Open the diff for the selected entry.
        ["-"] = cb("toggle_stage_entry"), -- Stage / unstage the selected entry.
        ["S"] = cb("stage_all"), -- Stage all entries.
        ["U"] = cb("unstage_all"), -- Unstage all entries.
        ["X"] = cb("restore_entry"), -- Restore entry to the state on the left side.
        ["R"] = cb("refresh_files"), -- Update stats and entries in the file list.
        -- ["<tab>"] = cb("select_next_entry"),
        -- ["<s-tab>"] = cb("select_prev_entry"),
        ["gf"] = cb("goto_file"),
        ["O"] = cb("goto_file_split"),
        ["o"] = cb("goto_file_tab"),
        ["i"] = cb("listing_style"), -- Toggle between 'list' and 'tree' views
        ["f"] = cb("toggle_flatten_dirs"), -- Flatten empty subdirectories in tree listing style.
        ["<leader>b"] = cb("toggle_files"),
      },
      file_history_panel = {
        ["g!"] = cb("options"), -- Open the option panel
        ["<C-A-d>"] = cb("open_in_diffview"), -- Open the entry under the cursor in a diffview
        ["y"] = cb("copy_hash"), -- Copy the commit hash of the entry under the cursor
        ["zR"] = cb("open_all_folds"),
        ["zM"] = cb("close_all_folds"),
        ["j"] = cb("next_entry"),
        ["<down>"] = cb("next_entry"),
        ["k"] = cb("prev_entry"),
        ["<up>"] = cb("prev_entry"),
        ["<cr>"] = cb("select_entry"),
        ["o"] = cb("select_entry"),
        ["<2-LeftMouse>"] = cb("select_entry"),
        ["<tab>"] = cb("select_next_entry"),
        ["<s-tab>"] = cb("select_prev_entry"),
        ["gf"] = cb("goto_file"),
        ["<C-w><C-f>"] = cb("goto_file_split"),
        ["<C-w>gf"] = cb("goto_file_tab"),
        ["<leader>e"] = cb("focus_files"),
        ["<leader>b"] = cb("toggle_files"),
      },
      option_panel = {
        ["<tab>"] = cb("select"),
        ["q"] = cb("close"),
      },
    },
  })

  function DiffviewToggle()
    local lib = require("diffview.lib")

    local view = lib.get_current_view()
    if view then
      -- Current tabpage is a Diffview; close it
      vim.cmd(":DiffviewClose")
      -- vim.cmd(":WindowsEnableAutowidth")
    else
      -- No open Diffview exists: open a new one
      -- vim.cmd(":WindowsDisableAutowidth")
      vim.cmd(":DiffviewOpen")
    end
  end

  vim.api.nvim_set_keymap("n", "<leader>df", ":lua DiffviewToggle()<CR>", { noremap = true, silent = true })
  vim.api.nvim_set_keymap("n", "gfh", ":DiffviewFileHistory %<CR>", { noremap = true, silent = true })

  -- Gutter diff/hunk markers
  require("gitsigns").setup({
    signs = {
      add = { text = "┃" },
      change = { text = "┃" },
      delete = { text = "┃" },
      topdelete = { text = "┃" },
      changedelete = { text = "┃" },
    },
    preview_config = {
      border = "rounded",
      style = "minimal",
      row = 1,
    },
    on_attach = function(bufnr)
      local function map(mode, l, r, opts)
        opts = opts or {}
        opts.buffer = bufnr
        vim.keymap.set(mode, l, r, opts)
      end

      -- Navigation
      map(
        "n",
        "]h",
        "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'",
        { expr = true }
      )
      map(
        "n",
        "[h",
        "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'",
        { expr = true }
      )

      map("n", "ghu", ":Gitsigns reset_hunk<CR>")
      map("v", "ghu", ":Gitsigns reset_hunk<CR>")
      map("n", "ghp", ":Gitsigns preview_hunk<CR>")
      map("n", "ght", ":Gitsigns toggle_deleted<CR>")

      -- Text object
      map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>")
    end,
  })

  vim.cmd([[
nmap <silent><leader>gg :0G<CR>
nmap <silent><leader>gc :Git commit<CR>
nmap <silent><leader>gp :Git push<CR>
nmap <silent><leader>gP :Git pull<CR>

nmap <silent><leader>gff :Git fetch --all<CR>
nmap <silent><leader>gfp :Git push --force<CR>

nmap <silent><leader>gr :Git rebase -i staging<CR>
nmap <silent><leader>gb :GBranches --locals<CR>
nmap <silent><leader>gt :GTags<CR>
  ]])
end
return M

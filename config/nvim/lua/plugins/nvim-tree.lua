-- [nfnl] fnl/plugins/nvim-tree.fnl
local function _1_()
  local tree = require("nvim-tree")
  local on_attach
  local function on_attach0(bufnr)
    local api = require("nvim-tree.api")
    local opts
    local function _2_(desc)
      return {buffer = bufnr, desc = ("nvim-tree: " .. desc), noremap = true, nowait = true, silent = true}
    end
    opts = _2_
    api.config.mappings.default_on_attach(bufnr)
    vim.keymap.set("n", "U", api.tree.change_root_to_node, opts("CD"))
    return vim.keymap.set("n", "u", api.tree.toggle_custom_filter, opts("Toggle Hidden"))
  end
  on_attach = on_attach0
  return tree.setup({on_attach = on_attach, sort_by = "case_sensitive", view = {adaptive_size = true}, renderer = {group_empty = true, indent_markers = {enable = false}, icons = {git_placement = "after", glyphs = {bookmark = "\239\145\186", folder = {default = "\239\132\148", open = "\239\132\149"}}, webdev_colors = false}}, filters = {custom = {"^\\.git$"}}})
end
local function _3_()
  vim.api.nvim_set_hl(0, "NvimTreeSpecialFile", {fg = "#c6c6c6"})
  vim.keymap.set("n", "<leader>n", ":NvimTreeToggle<CR>", {noremap = true})
  return vim.keymap.set("n", "<c-n>", ":NvimTreeFindFile<CR>", {noremap = true})
end
return {{"nvim-tree/nvim-tree.lua", priority = 1000, dependencies = {"nvim-tree/nvim-web-devicons", "stevearc/dressing.nvim"}, config = _1_, init = _3_, lazy = false}}

-- [nfnl] Compiled from fnl/plugins/obsidian.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  local obsidian = require("obsidian")
  local function _2_()
    return require("obsidian").util.smart_action()
  end
  local function _3_()
    return require("obsidian").util.toggle_checkbox()
  end
  local function _4_()
    return require("obsidian").util.gf_passthrough()
  end
  obsidian.setup({workspaces = {{name = "catastrofe", path = "~/vaults/catastrofe"}}, daily_notes = {folder = "daily"}, mappings = {["<cr>"] = {action = _2_, opts = {buffer = true, expr = true}}, ["<leader>ch"] = {action = _3_, opts = {buffer = true}}, gf = {action = _4_, opts = {buffer = true, expr = true, noremap = false}}}})
  vim.opt.conceallevel = 1
  return nil
end
return {{"epwalsh/obsidian.nvim", version = "*", lazy = true, ft = "markdown", dependencies = {"nvim-lua/plenary.nvim"}, config = _1_}}

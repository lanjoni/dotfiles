-- [nfnl] fnl/plugins/cmp.fnl
local function _1_()
  local filetype = vim.bo.filetype
  local buftype = vim.bo.buftype
  local bufname = vim.api.nvim_buf_get_name(0)
  local completion = vim.b.completion
  return (not ((filetype == "NvimTree") or (filetype == "Telescope") or (filetype == "TelescopePrompt")) and not (buftype == "prompt") and not (bufname == "") and not (completion == false))
end
return {{"saghen/blink.compat", version = "*", lazy = true}, {"saghen/blink.cmp", version = "*", dependencies = {"rafamadriz/friendly-snippets", "PaterJason/cmp-conjure", "mikavilpas/blink-ripgrep.nvim", "L3MON4D3/LuaSnip"}, opts = {enabled = _1_, keymap = {preset = "enter"}, appearance = {use_nvim_cmp_as_default = true, nerd_font_variant = "mono"}, completion = {ghost_text = {enabled = true}, menu = {draw = {columns = {{"kind_icon"}, {"label", "label_description", gap = 1}, {"source_name"}}}}}, snippets = {preset = "luasnip"}, cmdline = {enabled = false}, sources = {default = {"lsp", "path", "snippets", "buffer", "conjure", "ripgrep"}, providers = {conjure = {name = "conjure", module = "blink.compat.source", score_offset = -3}, ripgrep = {module = "blink-ripgrep", name = "Ripgrep", score_offset = -3}}}}, lazy = false}}

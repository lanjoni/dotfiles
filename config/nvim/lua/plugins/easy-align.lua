-- [nfnl] Compiled from fnl/plugins/easy-align.fnl by https://github.com/Olical/nfnl, do not edit.
local function _1_()
  vim.keymap.set("x", "<leader>ea", "<Plug>(EasyAlign)", {})
  return vim.keymap.set("n", "<leader>ea", "<Plug>(EasyAlign)", {})
end
return {{"junegunn/vim-easy-align", keys = {{"={", "vi{<C-v>$:EasyAlign\\ g/^\\S/<CR>", {buffer = true, silent = true}}, {"=[", "vi[<C-v>$:EasyAlign\\ g/^\\S/<CR>", {buffer = true, silent = true}}, {"=(", "vi(<C-v>$:EasyAlign\\ g/^\\S/<CR>", {buffer = true, silent = true}}}, init = _1_}}

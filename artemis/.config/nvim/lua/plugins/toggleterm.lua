-- [nfnl] Compiled from fnl/plugins/toggleterm.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local nvim = autoload("nvim")
local function _2_()
  local toggleterm = require("toggleterm")
  return toggleterm.setup({open_mapping = "<leader>to", direction = "vertical", size = 120, shade_terminals = true, start_in_insert = true, insert_mappings = false, terminal_mappings = false})
end
local function _3_()
  nvim.set_keymap("n", "<leader>tl", ":TermSelect<CR>", {noremap = true})
  nvim.ex.tnoremap("<esc>", "<c-\\><c-n>")
  nvim.ex.tnoremap("<c-h>", "<c-\\><c-n><c-w>h")
  nvim.ex.tnoremap("<c-j>", "<c-\\><c-n><c-w>j")
  nvim.ex.tnoremap("<c-k>", "<c-\\><c-n><c-w>k")
  nvim.ex.tnoremap("<c-l>", "<c-\\><c-n><c-w>l")
  local Terminal = require("toggleterm.terminal").Terminal
  local cmd = ""
  if (vim.fn.filereadable("project.clj") == 1) then
    cmd = "lein test"
  elseif (vim.fn.filereadable("deps.edn") == 1) then
    cmd = "clojure -T:build test"
  else
    print("No Clojure test configuration file found.")
    return 
  end
  local clojure_test
  local function _5_(term)
    return vim.cmd("startinsert!")
  end
  local function _6_(term)
    vim.cmd("startinsert!")
    return vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", {noremap = true, silent = true})
  end
  clojure_test = Terminal:new({cmd = cmd, direction = "float", hidden = true, on_close = _5_, on_open = _6_, close_on_exit = false})
  _G._clojure_test_toggle = function()
    return clojure_test:toggle()
  end
  return vim.api.nvim_set_keymap("n", "<leader>tt", "<cmd>lua _clojure_test_toggle()<CR>", {noremap = true, silent = true})
end
return {{"akinsho/toggleterm.nvim", config = _2_, init = _3_}}

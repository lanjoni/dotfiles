-- [nfnl] Compiled from fnl/plugins/lualine.fnl by https://github.com/Olical/nfnl, do not edit.
local _local_1_ = require("nfnl.module")
local autoload = _local_1_["autoload"]
local lsp = autoload("config.lsp")
local function lsp_connection()
  local message = lsp["get-progress-message"]()
  if ((message.status == "begin") or (message.status == "report")) then
    return (message.msg .. " : " .. message.percent .. "%% \239\130\150")
  elseif (message.status == "end") then
    return "\239\131\136"
  elseif ((message.status == "") and not vim.tbl_isempty(vim.lsp.buf_get_clients(0))) then
    return "\239\131\136"
  else
    return "\239\130\150"
  end
end
local background = "#16161d"
local kanagawa = {normal = {a = {bg = "#957FB8", fg = "#16161D"}, b = {bg = background, fg = "#957FB8"}, c = {bg = background, fg = "#DCD7BA"}}, insert = {a = {bg = "#76946A", fg = "#16161D"}, b = {bg = background, fg = "#76946A"}}, command = {a = {bg = "#C0A36E", fg = "#16161D"}, b = {bg = background, fg = "#C0A36E"}}, visual = {a = {bg = "#7E9CD8", fg = "#16161D"}, b = {bg = background, fg = "#7E9CD8"}}, replace = {a = {bg = "#C34043", fg = "#16161D"}, b = {bg = background, fg = "#C34043"}}, inactive = {a = {bg = "#0D1014", fg = "#7E9CD8"}, b = {bg = "#0D1014", fg = "#727169", gui = "bold"}, c = {bg = "#0D1014", fg = "#727169"}}}
local grey14 = "#16161D"
local grey15 = "#181820"
local grey16 = "#16161D"
if vim.g.kanagawa_lualine_bold then
  for _ = mode, pairs(kanagawa) do
    mode.a.gui = "bold"
  end
else
end
local function _4_()
  local lualine = require("lualine")
  return lualine.setup({options = {theme = kanagawa, icons_enabled = true, section_separators = {"", ""}, component_separators = {"\239\145\138", "\239\144\184"}}, extensions = {"fugitive", "fzf", "nvim-tree"}, sections = {lualine_a = {}, lualine_b = {{"mode", {upper = true}}}, lualine_c = {{"FugitiveHead"}, {"filename", file_status = true, path = 1, shorting_target = 40}}, lualine_x = {{"diagnostics", sections = {"error", "warn", "info", "hint"}, sources = {"nvim_lsp"}}, {lsp_connection}, "location", "filetype"}, lualine_y = {"encoding"}, lualine_z = {}}, inactive_sections = {lualine_a = {}, lualine_b = {}, lualine_c = {{"filename", file_status = true, path = 1}}, lualine_x = {}, lualine_y = {}, lualine_z = {}}})
end
return {{"nvim-lualine/lualine.nvim", config = _4_}}

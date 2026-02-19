-- [nfnl] fnl/plugins/lualine.fnl
local _local_1_ = require("nfnl.module")
local autoload = _local_1_.autoload
local lsp = autoload("config.lsp")
local function lsp_connection()
  local message = lsp["get-progress-message"]()
  if ((message.status == "begin") or (message.status == "report")) then
    return (message.msg .. " : " .. message.percent .. "%% \239\130\150")
  elseif (message.status == "end") then
    return "\239\131\136"
  elseif ((message.status == "") and not vim.tbl_isempty(vim.lsp.get_clients())) then
    return "\239\131\136"
  else
    return "\239\130\150"
  end
end
local background = "#0D0D0D"
local foreground = "#635E5A"
local kanagawa = {normal = {a = {bg = "#957FB8", fg = background}, b = {bg = background, fg = "#957FB8"}, c = {bg = background, fg = "#DCD7BA"}}, insert = {a = {bg = "#76946A", fg = background}, b = {bg = background, fg = "#76946A"}}, command = {a = {bg = "#C0A36E", fg = background}, b = {bg = background, fg = "#C0A36E"}}, visual = {a = {bg = "#7E9CD8", fg = background}, b = {bg = background, fg = "#7E9CD8"}}, replace = {a = {bg = "#C34043", fg = background}, b = {bg = background, fg = "#C34043"}}, inactive = {a = {bg = background, fg = foreground}, b = {bg = background, fg = foreground, gui = "bold"}, c = {bg = background, fg = foreground}}}
local function _3_()
  local lualine = require("lualine")
  local function _4_(s)
    return s:lower()
  end
  return lualine.setup({options = {theme = kanagawa, icons_enabled = true, global_status = true, section_separators = {"", ""}, component_separators = "", disabled_filetypes = {"DiffviewFiles", "fzf", "DiffviewFileHistory"}}, extensions = {"fugitive", "fzf", "nvim-tree", "avante"}, sections = {lualine_a = {{"mode", fmt = _4_}}, lualine_b = {}, lualine_c = {{"FugitiveHead"}, {"filename", file_status = true, path = 1, shorting_target = 40}}, lualine_x = {{"diagnostics", sections = {"error", "warn", "info", "hint"}, sources = {"nvim_lsp"}}, {lsp_connection}, "location", "filetype"}, lualine_y = {"encoding"}, lualine_z = {}}, inactive_sections = {lualine_a = {}, lualine_b = {}, lualine_c = {}, lualine_x = {}, lualine_y = {}, lualine_z = {}}})
end
return {{"nvim-lualine/lualine.nvim", config = _3_}}

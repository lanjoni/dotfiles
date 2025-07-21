-- [nfnl] fnl/plugins/lsp.fnl
vim.diagnostic.config({signs = {text = {[vim.diagnostic.severity.ERROR] = "\239\129\151", [vim.diagnostic.severity.WARN] = "\239\129\177", [vim.diagnostic.severity.INFO] = "\239\129\154", [vim.diagnostic.severity.HINT] = "\239\129\153"}}, virtual_text = true})
local function _1_()
  local function _2_()
    if ((vim.bo.filetype ~= "markdown") and (vim.bo.filetype ~= "css")) then
      return vim.lsp.buf.format({async = false})
    else
      return nil
    end
  end
  return vim.api.nvim_create_autocmd("BufWritePre", {buffer = buffer, callback = _2_})
end
local function _4_()
  local config_lsp = require("config.lsp")
  local on_attach = config_lsp.on_attach
  local handlers = config_lsp.handlers
  local before_init = config_lsp.before_init
  vim.lsp.config("*", {on_attach = on_attach, handlers = handlers, before_init = before_init})
  local function _5_(bufnr, on_dir)
    local pattern = vim.api.nvim_buf_get_name(bufnr)
    local util = require("lspconfig.util")
    local fallback = vim.loop.cwd()
    local patterns = {"project.clj", "deps.edn", "build.boot", "shadow-cljs.edn", ".git", "bb.edn"}
    local root = util.root_pattern(patterns)(pattern)
    return on_dir((root or fallback))
  end
  vim.lsp.config("clojure_lsp", {root_dir = _5_})
  vim.lsp.enable("clojure_lsp")
  vim.lsp.config("lua_ls", {settings = {lua = {diagnostics = {globals = {"vim", "nvim"}}}}})
  vim.lsp.enable("lua_ls")
  vim.lsp.config("fennel_language_server", {settings = {fennel = {diagnostics = {globals = {"vim", "nvim"}}}}})
  vim.lsp.enable("fennel_language_server")
  vim.lsp.enable("gopls")
  vim.lsp.enable("zls")
  vim.lsp.enable("rust_analyzer")
  vim.lsp.config("ts_ls", {on_attach = on_attach, handlers = handlers, before_init = before_init})
  vim.lsp.enable("ts_ls")
  vim.lsp.enable("markdown_oxide")
  vim.lsp.config("cssls", {settings = {css = {lint = {unknownAtRules = "ignore"}}}, cmd = {"vscode-css-language-server", "--stdio"}})
  vim.lsp.enable("cssls")
  vim.lsp.config("html", {cmd = {"vscode-html-language-server", "--stdio"}})
  vim.lsp.enable("html")
  vim.lsp.config("jsonls", {cmd = {"vscode-json-language-server", "--stdio"}})
  return vim.lsp.enable("jsonls")
end
return {{"neovim/nvim-lspconfig", init = _1_, config = _4_}}

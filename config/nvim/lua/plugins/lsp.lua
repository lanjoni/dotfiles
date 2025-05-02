-- [nfnl] Compiled from fnl/plugins/lsp.fnl by https://github.com/Olical/nfnl, do not edit.
vim.diagnostic.config({signs = {text = {[vim.diagnostic.severity.ERROR] = "\239\129\151", [vim.diagnostic.severity.WARN] = "\239\129\177", [vim.diagnostic.severity.INFO] = "\239\129\154", [vim.diagnostic.severity.HINT] = "\239\129\153"}}, virtual_text = true})
local function _1_()
  local function _2_()
    if (vim.bo.filetype ~= "markdown") then
      return vim.lsp.buf.format({async = false})
    else
      return nil
    end
  end
  return vim.api.nvim_create_autocmd("BufWritePre", {buffer = buffer, callback = _2_})
end
local function _4_()
  local lsp = require("lspconfig")
  local cmplsp = require("cmp_nvim_lsp")
  local config_lsp = require("config.lsp")
  local on_attach = config_lsp.on_attach
  local handlers = config_lsp.handlers
  local before_init = config_lsp.before_init
  local capabilities = cmplsp.default_capabilities()
  lsp.clojure_lsp.setup({on_attach = on_attach, handlers = handlers, before_init = before_init, capabilities = capabilities})
  lsp.lua_ls.setup({settings = {Lua = {diagnostics = {globals = {"vim", "nvim"}}}}})
  lsp.fennel_language_server.setup({on_attach = on_attach, handlers = handlers, before_init = before_init, capabilities = capabilities})
  lsp.gopls.setup({on_attach = on_attach, handlers = handlers, before_init = before_init, capabilities = capabilities})
  lsp.ts_ls.setup({on_attach = on_attach, handlers = handlers, before_init = before_init, capabilities = capabilities})
  lsp.markdown_oxide.setup({on_attach = on_attach, handlers = handlers, before_init = before_init, capabilities = capabilities})
  lsp.cssls.setup({on_attach = on_attach, handlers = handlers, before_init = before_init, capabilities = capabilities, settings = {css = {lint = {unknownAtRules = "ignore"}}}, cmd = {"vscode-css-language-server", "--stdio"}})
  lsp.html.setup({on_attach = on_attach, handlers = handlers, before_init = before_init, capabilities = capabilities, cmd = {"vscode-html-language-server", "--stdio"}})
  return lsp.jsonls.setup({on_attach = on_attach, handlers = handlers, before_init = before_init, capabilities = capabilities, cmd = {"vscode-json-language-server", "--stdio"}})
end
return {{"neovim/nvim-lspconfig", init = _1_, config = _4_}}

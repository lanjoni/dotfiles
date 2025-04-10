;; symbols to show for lsp diagnostics
(vim.diagnostic.config {:signs {:text {vim.diagnostic.severity.ERROR ""
                                       vim.diagnostic.severity.WARN ""
                                       vim.diagnostic.severity.INFO ""
                                       vim.diagnostic.severity.HINT ""}}
                        :virtual_text true})

[{1 :neovim/nvim-lspconfig
  :init (fn []
          (vim.api.nvim_create_autocmd :BufWritePre {: buffer
                                                     :callback (fn []
                                                                 (when (not= vim.bo.filetype "markdown")
                                                                   (vim.lsp.buf.format {:async false})))}))
  :config (fn []
            (let [lsp (require :lspconfig)
                  cmplsp (require :cmp_nvim_lsp)
                  config-lsp (require :config.lsp)
                  on_attach config-lsp.on_attach
                  handlers config-lsp.handlers
                  before_init config-lsp.before_init
                  capabilities (cmplsp.default_capabilities)]

              ;; To add support to more language servers check:
              ;; https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

              ;; Clojure
              (lsp.clojure_lsp.setup {:on_attach on_attach
                                      :handlers handlers
                                      :before_init before_init
                                      :capabilities capabilities})

              ;; Lua 
              (lsp.lua_ls.setup {:settings 
                                 {:Lua 
                                  {:diagnostics 
                                   {:globals ["vim"
                                              "nvim"]}}}})

              ;; Fennel 
              (lsp.fennel_language_server.setup {:on_attach on_attach
                                                 :handlers handlers
                                                 :before_init before_init
                                                 :capabilities capabilities})

              ;; Go
              (lsp.gopls.setup {:on_attach on_attach
                                :handlers handlers
                                :before_init before_init
                                :capabilities capabilities})

              ;; Typescript
              (lsp.ts_ls.setup {:on_attach on_attach
                                :handlers handlers
                                :before_init before_init
                                :capabilities capabilities})

              ;; Markdown
              (lsp.markdown_oxide.setup {:on_attach on_attach
                                         :handlers handlers
                                         :before_init before_init
                                         :capabilities capabilities})

              ;; html / css / json
              (lsp.cssls.setup {:on_attach on_attach
                                :handlers handlers
                                :before_init before_init
                                :capabilities capabilities
                                :cmd ["vscode-css-language-server" "--stdio"]})

              (lsp.html.setup {:on_attach on_attach
                               :handlers handlers
                               :before_init before_init
                               :capabilities capabilities
                               :cmd ["vscode-html-language-server" "--stdio"]})

              (lsp.jsonls.setup {:on_attach on_attach
                                 :handlers handlers
                                 :before_init before_init
                                 :capabilities capabilities
                                 :cmd ["vscode-json-language-server" "--stdio"]})))}]

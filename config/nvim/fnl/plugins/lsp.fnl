; symbols to show for lsp diagnostics
(vim.diagnostic.config {:signs {:text {vim.diagnostic.severity.ERROR ""
                                       vim.diagnostic.severity.WARN ""
                                       vim.diagnostic.severity.INFO ""
                                       vim.diagnostic.severity.HINT ""}}
                        :virtual_text true})

[{1 :neovim/nvim-lspconfig
  :init (fn []
          (vim.api.nvim_create_autocmd :BufWritePre {: buffer
                                                     :callback (fn []
                                                                 (when (and (not= vim.bo.filetype "markdown")
                                                                            (not= vim.bo.filetype "css"))
                                                                   (vim.lsp.buf.format {:async false})))}))
  :config (fn []
            (let [config-lsp (require :config.lsp)
                  on_attach config-lsp.on_attach
                  handlers config-lsp.handlers
                  before_init config-lsp.before_init]

              ;; For more language servers check:
              ;; https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md

              (vim.lsp.config :* {:on_attach on_attach
                                  :handlers handlers
                                  :before_init before_init})

              ;; Clojure
              (vim.lsp.config :clojure_lsp {:root_dir (fn [bufnr on_dir]
                                                        (let [pattern (vim.api.nvim_buf_get_name bufnr)
                                                              util (require :lspconfig.util)
                                                              fallback (vim.loop.cwd)
                                                              patterns [:project.clj :deps.edn :build.boot :shadow-cljs.edn :.git :bb.edn]
                                                              root ((util.root_pattern patterns) pattern)]
                                                          (on_dir (or root fallback))))})
              (vim.lsp.enable :clojure_lsp)

              ;; Lua
              (vim.lsp.config :lua_ls {:settings {:lua {:diagnostics {:globals ["vim" "nvim"]}}}})
              (vim.lsp.enable :lua_ls)

              ;; Fennel
              (vim.lsp.config :fennel_language_server {:settings {:fennel {:diagnostics {:globals ["vim" "nvim"]}}}})
              (vim.lsp.enable :fennel_language_server)

              ;; Go
              (vim.lsp.enable :gopls)

              ;; Zig
              (vim.lsp.enable :zls)

              ;; Rust
              (vim.lsp.enable :rust_analyzer)

              ;; JavaScript and TypeScript
              (vim.lsp.config :ts_ls {:on_attach on_attach
                                      :handlers handlers
                                      :before_init before_init})
              (vim.lsp.enable :ts_ls)

              ;; Markdown
              (vim.lsp.enable :markdown_oxide)

              ;; html / css / json
              (vim.lsp.config :cssls {:settings {:css {:lint {:unknownAtRules :ignore}}}
                                      :cmd ["vscode-css-language-server" "--stdio"]})
              (vim.lsp.enable :cssls)

              (vim.lsp.config :html {:cmd ["vscode-html-language-server" "--stdio"]})
              (vim.lsp.enable :html)

              (vim.lsp.config :jsonls {:cmd ["vscode-json-language-server" "--stdio"]})
              (vim.lsp.enable :jsonls)))}]

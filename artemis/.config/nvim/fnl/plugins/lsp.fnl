(local {: autoload} (require :nfnl.module))
(local nvim (autoload :nvim))

;symbols to show for lsp diagnostics
(fn define-signs
  [prefix]
  (let [error (.. prefix "SignError")
        warn  (.. prefix "SignWarn")
        info  (.. prefix "SignInfo")
        hint  (.. prefix "SignHint")]
    (vim.fn.sign_define error {:text "" :texthl error})
    (vim.fn.sign_define warn  {:text "" :texthl warn})
    (vim.fn.sign_define info  {:text "" :texthl info})
    (vim.fn.sign_define hint  {:text "" :texthl hint})))

(define-signs "Diagnostic")

[{1 :neovim/nvim-lspconfig
  :config (fn []
            (let [lsp (require :lspconfig)
                  cmplsp (require :cmp_nvim_lsp)
                  mason (require :mason)
                  mason-lsp-config (require :mason-lspconfig)
                  handlers {"textDocument/publishDiagnostics"
                            (vim.lsp.with
                              vim.lsp.diagnostic.on_publish_diagnostics
                              {:severity_sort true
                               :update_in_insert true
                               :underline true
                               :virtual_text true})
                            "textDocument/hover"
                            (vim.lsp.with
                              vim.lsp.handlers.hover
                              {:border "single"})
                            "textDocument/signatureHelp"
                            (vim.lsp.with
                              vim.lsp.handlers.signature_help
                              {:border "single"})}
                  capabilities (cmplsp.default_capabilities)
                  before_init (fn [params]
                                (set params.workDoneToken :1))
                  on_attach (fn [client bufnr]
                              (do
                                (nvim.buf_set_keymap bufnr :n :gd "<Cmd>lua vim.lsp.buf.definition()<CR>" {:noremap true})
                                (nvim.buf_set_keymap bufnr :n :K "<Cmd>lua vim.lsp.buf.hover()<CR>" {:noremap true})
                                (nvim.buf_set_keymap bufnr :n :<leader>ld "<Cmd>lua vim.lsp.buf.declaration()<CR>" {:noremap true})
                                (nvim.buf_set_keymap bufnr :n :<leader>lt "<cmd>lua vim.lsp.buf.type_definition()<CR>" {:noremap true})
                                (nvim.buf_set_keymap bufnr :n :<leader>lh "<cmd>lua vim.lsp.buf.signature_help()<CR>" {:noremap true})
                                (nvim.buf_set_keymap bufnr :n :<leader>ln "<cmd>lua vim.lsp.buf.rename()<CR>" {:noremap true})
                                (nvim.buf_set_keymap bufnr :n :<leader>le "<cmd>lua vim.diagnostic.open_float()<CR>" {:noremap true})
                                (nvim.buf_set_keymap bufnr :n :<leader>lq "<cmd>lua vim.diagnostic.setloclist()<CR>" {:noremap true})
                                (nvim.buf_set_keymap bufnr :n :<leader>lf "<cmd>lua vim.lsp.buf.format()<CR>" {:noremap true})
                                (nvim.buf_set_keymap bufnr :n :<leader>lj "<cmd>lua vim.diagnostic.goto_next()<CR>" {:noremap true})
                                (nvim.buf_set_keymap bufnr :n :<leader>lk "<cmd>lua vim.diagnostic.goto_prev()<CR>" {:noremap true})
                                (nvim.buf_set_keymap bufnr :n :<leader>la "<cmd>lua vim.lsp.buf.code_action()<CR>" {:noremap true})
                                (nvim.buf_set_keymap bufnr :v :<leader>la "<cmd>lua vim.lsp.buf.range_code_action()<CR> " {:noremap true})
                                ;telescope
                                (nvim.buf_set_keymap bufnr :n :<leader>lw ":lua require('telescope.builtin').diagnostics()<cr>" {:noremap true})
                                (nvim.buf_set_keymap bufnr :n :<leader>lr ":lua require('telescope.builtin').lsp_references()<cr>" {:noremap true})
                                (nvim.buf_set_keymap bufnr :n :<leader>li ":lua require('telescope.builtin').lsp_implementations()<cr>" {:noremap true})))]
              ;; To add support to more language servers check:
              ;; https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

              (mason.setup)
              (mason-lsp-config.setup {:ensure_installed [:clojure_lsp
                                                          :gopls 
                                                          :tsserver
                                                          :cssls
                                                          :html 
                                                          :jsonls 
                                                          :lua_ls
                                                          :fennel_language_server]})

              ;; Clojure
              (lsp.clojure_lsp.setup {:on_attach on_attach
                                      :handlers handlers
                                      :before_init before_init
                                      :capabilities capabilities})

              ;; Lua 
              (lsp.lua_ls.setup {:settings {:Lua {:diagnostics {:globals ["vim"
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

              ;; TypeScript
              (lsp.tsserver.setup {:on_attach on_attach
                                   :handlers handlers
                                   :before_init before_init
                                   :capabilities capabilities})

              ;; html / css / json
              (lsp.cssls.setup {:on_attach on_attach
                                :handlers handlers
                                :before_init before_init
                                :capabilities capabilities
                                :cmd ["css-languageserver" "--stdio"]})

              (lsp.html.setup {:on_attach on_attach
                               :handlers handlers
                               :before_init before_init
                               :capabilities capabilities
                               :cmd ["html-languageserver" "--stdio"]})

              (lsp.jsonls.setup {:on_attach on_attach
                                 :handlers handlers
                                 :before_init before_init
                                 :capabilities capabilities
                                 :cmd ["json-languageserver" "--stdio"]})))}]

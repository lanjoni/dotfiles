[{1 :williamboman/mason.nvim
  :lazy false
  :config (fn []
            (let [mason (require :mason)]
              (mason.setup)))}

 {1 :williamboman/mason-lspconfig.nvim
  :lazy false
  :config (fn []
            (let [mason-lspconfig (require :mason-lspconfig)]
              (mason-lspconfig.setup 
                {:ensure_installed 
                 ["clojure_lsp@2025.03.07-17.42.36"
                  :gopls
                  :fennel_language_server
                  :lua_ls]})))}]

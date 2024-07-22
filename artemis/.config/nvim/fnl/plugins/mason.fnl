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
                 [:clojure_lsp
                  :cssls
                  :elixirls
                  :elp
                  :fennel_language_server
                  :gopls 
                  :html 
                  :jsonls 
                  :lua_ls
                  :tsserver]})))}]

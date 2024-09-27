[{1 :stevearc/conform.nvim
  :opts {}
  :config (fn []
            (let [conform (require :conform)]
              (conform.setup {:formatters_by_ft {:clojure [:cljfmt]
                                                 :fennel [:fnlfmt]
                                                 :javascript {1 :prettierd
                                                              2 :prettier
                                                              :stop_after_first true}
                                                 :lua [:stylua]}})))}]

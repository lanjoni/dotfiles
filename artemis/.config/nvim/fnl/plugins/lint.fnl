[{1 :mfussenegger/nvim-lint
  :opts {}
  :event [:BufReadPre :BufNewFile]
  :config (fn []
            (let [lint (require :lint)
                  lint-augroup (vim.api.nvim_create_augroup :lint {:clear true})]
              (set lint.linters_by_ft
                   {:clojure [:clj-kondo] :javascript [:eslint_d]})
              (vim.api.nvim_create_autocmd [:BufEnter :BufWritePost :InsertLeave]
                                           {:callback (fn [] (lint.try_lint))
                                            :group lint-augroup})
              (vim.keymap.set :n :<leader>ll (fn [] (lint.try_lint))
                              {:desc "Trigger linting for current file"})))}]

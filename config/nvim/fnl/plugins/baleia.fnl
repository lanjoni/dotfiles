[{1 :m00qek/baleia.nvim
  :version "*"
  :lazy false
  :config (fn []
            (set vim.g.conjure_baleia
                 ((. (require :baleia) :setup) {:line_starts_at 3}))
            (local augroup
              (vim.api.nvim_create_augroup :ConjureBaleia
                                           {:clear true}))
            (vim.api.nvim_create_user_command :BaleiaColorize
                                              (fn []
                                                (vim.g.conjure_baleia.once (vim.api.nvim_get_current_buf)))
                                              {:bang true})
            (vim.api.nvim_create_user_command :BaleiaLogs
                                              vim.g.conjure_baleia.logger.show
                                              {:bang true}))}]

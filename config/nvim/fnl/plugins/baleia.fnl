[{1 :m00qek/baleia.nvim
  :version "*"
  :lazy false
  :config (fn []
            (let [baleia (require :baleia)
                  conjure-baleia (baleia.setup {:line_starts_at 3})]
              (set vim.g.conjure_baleia conjure-baleia)

              (vim.api.nvim_create_user_command :BaleiaColorize
                                                (fn [] (conjure-baleia.once (vim.api.nvim_get_current_buf)))
                                                {:bang true})
              (vim.api.nvim_create_user_command :BaleiaLogs
                                                conjure-baleia.logger.show
                                                {:bang true})))}]

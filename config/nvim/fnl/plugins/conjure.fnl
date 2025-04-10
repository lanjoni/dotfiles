(local {: autoload} (require :nfnl.module))
(local nvim (autoload :nvim))

[{1 :Olical/conjure
  :branch "main"
  :init (fn []
          ;; alias for ConjureShadowSelect -> Csc
          (vim.cmd {:cmd "command" :args ["-nargs=1" "Cjc" "ConjureConnect" "<args>"] :bang true})
          (vim.cmd {:cmd "command" :args ["-nargs=1" "Cjss" "ConjureShadowSelect" "<args>"] :bang true})

          ;; some conjure settings
          (set nvim.g.conjure#mapping#doc_word "K")
          (set nvim.g.conjure#log#strip_ansi_escape_sequences_line_limit 1)
          (set nvim.g.conjure#client#clojure#nrepl#eval#auto_require true)
          (set nvim.g.conjure#client#clojure#nrepl#connection#auto_repl#enabled false)
          (set nvim.g.conjure#client#clojure#nrepl#test#current_form_names ["deftest" "defflow" "defspec" "describe"])

          ;; baleia settings
          (vim.api.nvim_create_autocmd [:BufWinEnter]
                                              {:callback (fn []
                                                           (local buffer
                                                                  (vim.api.nvim_get_current_buf))
                                                           (vim.diagnostic.enable false
                                                                                  {:bufnr buffer})
                                                           (vim.g.conjure_baleia.automatically buffer)
                                                           (vim.api.nvim_buf_set_option buffer :undolevels (- 1)))
                                               :pattern :conjure-log-*}))}]

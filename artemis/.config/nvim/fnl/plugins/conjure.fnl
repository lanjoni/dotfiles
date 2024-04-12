(local {: autoload} (require :nfnl.module))
(local nvim (autoload :nvim))

[{1 :Olical/conjure
  :branch "master"
  :init (fn []
          ;; alias for ConjureShadowSelect -> Csc
          (vim.cmd {:cmd "command" :args ["-nargs=1" "Cjc" "ConjureConnect" "<args>"] :bang true})
          (vim.cmd {:cmd "command" :args ["-nargs=1" "Cjss" "ConjureShadowSelect" "<args>"] :bang true})
          ;; some conjure settings
          (set nvim.g.conjure#mapping#doc_word "K")
          (set nvim.g.conjure#client#clojure#nrepl#eval#auto_require true)
          (set nvim.g.conjure#client#clojure#nrepl#connection#auto_repl#enabled true)
          (set nvim.g.conjure#client#clojure#nrepl#test#current_form_names ["deftest" "defflow" "defspec" "describe"]))}]

(local {: autoload} (require :nfnl.module))
(local nvim (autoload :nvim))

[{1 :echasnovski/mini.indentscope
  :config (fn []
            (let [mini-indentscope (require :mini.indentscope)]
              (mini-indentscope.setup
                {:symbol "│"
                 :options {:try_as_border true}})))}]

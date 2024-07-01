(local {: autoload} (require :nfnl.module))
(local nvim (autoload :nvim))

[{1 :windwp/nvim-ts-autotag
  :config (fn []
            (let [ts-autotag (require :nvim-ts-autotag)]
              (ts-autotag.setup {:opts {:enable_close true
                                        :enable_close_on_slash false
                                        :enable_rename true}
                                 ;;:per_filetype {:html {:enable_close false}}
                                 })))}]

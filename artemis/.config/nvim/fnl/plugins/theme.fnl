[{1 :slugbyte/lackluster.nvim
  :lazy false
  :priority 1000
  :dependencies [:rktjmp/lush.nvim
                 :nvim-tree/nvim-web-devicons]
  :config (fn []
            (let [lackluster (require :lackluster)]
              (lackluster.setup {:tweak_background {:normal "#000000"
                                                    :telescope "#000000"
                                                    :menu "#000000"
                                                    :popup "#000000"}}))
           (vim.cmd "colorscheme lackluster"))}]

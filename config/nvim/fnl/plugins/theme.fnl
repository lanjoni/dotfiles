[{1 :erikbackman/brightburn.vim
  :lazy false
  :priority 1000}

 {1 :rose-pine/neovim
  :name :rose-pine
  :lazy false
  :priority 1000
  :config (fn []
            (let [rose-pine (require :rose-pine)]
              (rose-pine.setup {:variant :moon
                                :styles {:italic false
                                         :transparency true}})))}

 {1 :rebelot/kanagawa.nvim
  :lazy false
  :priority 1000
  :dependencies [:nvim-tree/nvim-web-devicons]
  :config (fn []
            (let [kanagawa (require :kanagawa)]
              (kanagawa.setup
                {:compile false
                 :undercurl true
                 :commentStyle {:italic true}
                 :functionStyle {}
                 :keywordStyle {:italic true}
                 :statementStyle {:bold true}
                 :typeStyle {}
                 :transparent false
                 :dimInactive false
                 :terminalColors true
                 :colors {:theme {:all {:ui {:bg_gutter "none"}}}}
                 :overrides (fn []
                              {:Normal {:bg "#0D1014" :fg "#DCD7BA"}})
                 :theme "wave"
                 :background {:dark "wave" :light "lotus"}})))}

{1 :deparr/tairiki.nvim
  :lazy false
  :priority 1000
  :commit "a278d7ce634ee18dcf20e63cb245d1df4985980a"
  :config (fn []
            (let [tairiki (require :tairiki)]
              (tairiki.setup {:code_style {:keywords "italic"}})
              (vim.cmd "colorscheme tairiki")
              (vim.api.nvim_set_hl 0 :NonText {:fg "#282828"})))}]

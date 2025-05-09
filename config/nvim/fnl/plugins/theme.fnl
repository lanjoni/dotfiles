[{1 :deparr/tairiki.nvim
  :branch "legacy"
  :lazy false
  :priority 1000
  :config (fn []
            (let [tairiki (require :tairiki)]
              (tairiki.setup {:code_style {:keywords "italic"}})
              (vim.cmd "colorscheme tairiki")
              (vim.api.nvim_set_hl 0 :NonText {:fg "#282828"})))}]

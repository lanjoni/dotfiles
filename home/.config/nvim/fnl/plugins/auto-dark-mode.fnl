[{1 :f-person/auto-dark-mode.nvim
  :lazy false
  :opts {:set_dark_mode (fn []
                          (when (not= vim.g.colors_name "lackluster")
                            (vim.cmd "colorscheme lackluster")))
         :set_light_mode (fn []
                           (when (not= vim.g.colors_name "lackluster-day")
                             (vim.cmd "colorscheme lackluster-day")))
         :update_interval 1000
         :fallback :dark}}]

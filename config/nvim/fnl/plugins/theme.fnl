[{1 :maxmx03/solarized.nvim
  :lazy false
  :priority 1000}

 {1 :rose-pine/neovim
  :name "rose-pine"
  :lazy false 
  :priority 1000
  :dependencies [:rktjmp/lush.nvim
                 :nvim-tree/nvim-web-devicons]
  :config (fn []
            (let [rose-pine (require :rose-pine)]
              (rose-pine.setup {:variant "moon"
                                :dim_inactive_windows false
                                :styles {:transparency true}})))}

 {1 :folke/tokyonight.nvim
  :lazy false
  :priority 1000
  :dependencies [:nvim-tree/nvim-web-devicons]
  :config (fn []
            (let [theme (require :tokyonight)
                  theme-util (require :tokyonight.util)]
              (theme.setup {:style :night
                            :styles {:comments {:italic true}
                                     :floats :dark
                                     :functions {}
                                     :keywords {:italic true}
                                     :sidebars :dark
                                     :variables {}}
                            :on_colors (fn [colors]
                                         (set colors.bg_statusline (theme-util.darken colors.bg_dark 0.5)))
                            :on_highlights (fn [highlight colors]
                                             (set highlight.String {:fg colors.green2})
                                             (set highlight.TelescopeNormal {:bg colors.bg_statusline
                                                                             :fg colors.fg_dark})
                                             (set highlight.TelescopeBorder {:bg colors.bg_statusline
                                                                             :fg colors.fg_dark})
                                             (set highlight.NvimTreeNormal {:bg colors.bg_statusline
                                                                            :fg colors.fg_dark})
                                             (set highlight.NvimTreeNormalNC {:bg colors.bg_statusline
                                                                              :fg colors.fg_dark})
                                             (set highlight.NvimTreeWinSeparator {:bg colors.bg_statusline
                                                                                  :fg colors.bg_dark})
                                             (set highlight.FloatBorder {:bg colors.bg_statusline
                                                                         :fg colors.fg_dark})
                                             (set highlight.ColorColumn {:bg colors.bg_statusline
                                                                         :fg colors.fg_dark})
                                             (set highlight.Pmenu {:bg colors.bg_statusline
                                                                   :fg colors.fg_dark})
                                             (set highlight.NonText {:fg (theme-util.lighten colors.bg 0.9)}))
                            :terminal_colors true})))}

 {1 :slugbyte/lackluster.nvim
  :lazy false
  :priority 1000
  :dependencies [:rktjmp/lush.nvim
                 :nvim-tree/nvim-web-devicons]
  :config (fn []
            (let [lackluster (require :lackluster)]
              (lackluster.setup {:tweak_background {:normal "#000000"
                                                    :telescope "#000000"
                                                    :menu "#000000"
                                                    :popup "#000000"
                                                    :lualine "#000000"}}))
            (vim.cmd "colorscheme lackluster"))}]

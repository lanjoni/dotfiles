[{1 :rebelot/kanagawa.nvim
  :lazy false
  :priority 1000
  :dependencies [:nvim-tree/nvim-web-devicons]
  :config (fn []
            (let [theme (require :kanagawa)
                  background "#0D0D0D"
                  foreground "#DCD7BA"
                  dim-foreground "#181816"
                  telescope-border-foreground "#2A2A37"
                  telescope-title-foreground "#957FB8"]
              (theme.setup
                {:compile false
                 :undercurl true
                 :commentStyle {:italic false}
                 :keywordStyle {:italic false}
                 :statementStyle {:bold true}
                 :dimInactive false
                 :terminalColors true
                 :colors {:palette {}
                          :theme {:wave {} :lotus {} :dragon {} :all {}}}
                 :overrides (fn [_]
                              {;; base colors
                               :Normal {:bg background :fg foreground}
                               :CursorColumn {:bg background}
                               :CursorLine {:bg background}
                               :CursorLineNr {:bg background}

                               ;; diagnostics background
                               :DiagnosticSignError {:bg background}
                               :DiagnosticSignWarn {:bg background}
                               :DiagnosticSignInfo {:bg background}
                               :DiagnosticSignHint {:bg background}
                               :FoldColumn {:bg background}

                               ;; git signs plugin colors
                               :GitSignsAdd {:bg background}
                               :GitSignsChange {:bg background}
                               :GitSignsDelete {:bg background}
                               :GitSignsTopdelete {:bg background}
                               :GitSignsChangedelete {:bg background}
                               :GitSignsUntracked {:bg background}

                               ;; custom internal colors
                               :LineNr {:bg background}
                               :NonText {:bg background :fg dim-foreground}
                               :SignColumn {:bg background}

                               ;; status line correction
                               :StatusLine {:bg background}
                               :StatusLineNC {:bg background}

                               ;; telescope main backgrounds
                               :TelescopeNormal {:bg background}
                               :TelescopePreviewNormal {:bg background}
                               :TelescopeResultsNormal {:bg background}
                               :TelescopePromptNormal {:bg background}

                               ;; telescope borders
                               :TelescopeBorder {:bg background :fg telescope-border-foreground}
                               :TelescopePreviewBorder {:bg background :fg telescope-border-foreground}
                               :TelescopeResultsBorder {:bg background :fg telescope-border-foreground}
                               :TelescopePromptBorder {:bg background :fg telescope-border-foreground}

                               ;; telescope titles
                               :TelescopeTitle {:bg background :fg telescope-title-foreground}
                               :TelescopePreviewTitle {:bg background :fg telescope-title-foreground}
                               :TelescopeResultsTitle {:bg background :fg telescope-title-foreground}
                               :TelescopePromptTitle {:bg background :fg telescope-title-foreground}

                               ;; telescope prompt
                               :TelescopePromptPrefix {:bg background :fg telescope-title-foreground}
                               :WinSeparator {:bg background :fg dim-foreground}})
                 :theme "dragon"
                 :background {:dark "dragon" :light "lotus"}})
              (vim.cmd "colorscheme kanagawa-dragon")))}]

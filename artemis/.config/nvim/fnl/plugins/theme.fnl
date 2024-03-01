(local {: autoload} (require :nfnl.module))
(local nvim (autoload :nvim))

[{1 :rebelot/kanagawa.nvim ;; :folke/tokyonight.nvim
  :lazy false
  :priority 1000
  :dependencies [:nvim-tree/nvim-web-devicons]
  :config (fn []
            (let [theme (require :kanagawa);; :tokyonight)
                  theme-util (require :kanagawa.colors)] ;; :tokyonight.util)]
              (theme.setup
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
                 :colors {:palette {}
                          :theme {:wave {} :lotus {} :dragon {} :all {}}}
                 :overrides (fn [colors]
                              {:Normal {:bg "#0D1014" :fg "#DCD7BA"}
                               :FoldColumn {:bg "#16161D"}
                               :SignColumn {:bg "#16161D"}
                               :LineNr {:bg "#16161D"}
                               :CursorColumn {:bg "#16161D"}
                               :CursorLine {:bg "#16161D"}
                               :CursorLineNr {:bg "#16161D"}
                               :DiagnosticSignError {:bg "#16161D"}
                               :DiagnosticSignWarn {:bg "#16161D"}
                               :DiagnosticSignInfo {:bg "#16161D"}
                               :DiagnosticSignHint {:bg "#16161D"}})
                 :theme "wave"
                 :background {:dark "wave" :light "lotus"}})
              (vim.cmd "colorscheme kanagawa")))}]

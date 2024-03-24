(local {: autoload} (require :nfnl.module))
(local nvim (autoload :nvim))

[{1 :rebelot/kanagawa.nvim ;; :folke/tokyonight.nvim
  :lazy false
  :priority 1000
  :dependencies [:nvim-tree/nvim-web-devicons]
  :config (fn []
              (vim.cmd "colorscheme kanagawa-dragon"))}]

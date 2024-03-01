(local {: autoload} (require :nfnl.module))
(local nvim (autoload :nvim))

[{1 :nvim-tree/nvim-tree.lua
  :lazy false
  :priority 1000
  :dependencies [:nvim-tree/nvim-web-devicons]
  :config (fn []
            (local nvim-tree (require :nvim-tree))
            (nvim-tree.setup {:sort_by "case_sensitive"
                              :view {:width 30}
                              :renderer {:group_empty true}
                              :filters {:dotfiles true}})
            (nvim.set_keymap :n :<c-n> ":NvimTreeFindFile<CR>" {:noremap false})
            (nvim.set_keymap :n :<leader>n ":NvimTreeToggle<CR>" {:noremap false}))}]

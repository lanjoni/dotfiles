(local {: autoload} (require :nfnl.module))
(local nvim (autoload :nvim))

[{1 :nvim-tree/nvim-tree.lua
  :lazy false
  :priority 1000
  :dependencies [:nvim-tree/nvim-web-devicons
                 :stevearc/dressing.nvim]
  :config (fn []
            (let [tree (require :nvim-tree)
                  on-attach (fn on-attach [bufnr]
                              (let [api (require :nvim-tree.api)
                                    opts (fn [desc] 
                                           {:buffer bufnr
                                            :desc (.. "nvim-tree: " desc)
                                            :noremap true
                                            :nowait true
                                            :silent true})]
                                (api.config.mappings.default_on_attach bufnr)
                                (vim.keymap.set :n :U api.tree.change_root_to_node (opts "CD"))
                                (vim.keymap.set :n :u api.tree.toggle_custom_filter (opts "Toggle Hidden"))))]
              (tree.setup
                {:on_attach on-attach
                 :sort_by "case_sensitive"
                 :view {:adaptive_size true}
                 :renderer {:group_empty true
                            :indent_markers {:enable false}
                            :icons {:webdev_colors false
                                    :git_placement :after
                                    :glyphs {:bookmark ""
                                             :folder {:default "" :open ""}}}}
                 :filters {:custom ["^\\.git$"]}})))
  :init (fn []
          (vim.api.nvim_set_hl 0 :NvimTreeSpecialFile {:fg "#c6c6c6"})
          (vim.keymap.set :n :<leader>n ":NvimTreeToggle<CR>" {:noremap true})
          (vim.keymap.set :n :<c-n> ":NvimTreeFindFile<CR>" {:noremap true}))}]

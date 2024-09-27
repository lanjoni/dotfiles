(local {: autoload} (require :nfnl.module))
(local nvim (autoload :nvim))

[{1 :romgrk/barbar.nvim
  :opts {}
  :dependencies [:lewis6991/gitsigns.nvim
                 :nvim-tree/nvim-web-devicons]
  :config (fn []
            (let [barbar (require :barbar)]
              (barbar.setup {:sidebar_filetypes {:NvimTree true}})))
  :init (fn [] 
          (set vim.g.barbar_auto_setup false)

          (nvim.set_keymap :n :<leader>hh ":BufferPrevious<CR>" {:noremap false})
          (nvim.set_keymap :n :<leader>ll ":BufferNext<CR>" {:noremap false})
          (nvim.set_keymap :n :<C-C-i>    ":BufferNext<CR>" {:noremap false})
          (nvim.set_keymap :n :<leader>k  ":BufferClose<CR>" {:noremap false}))}]

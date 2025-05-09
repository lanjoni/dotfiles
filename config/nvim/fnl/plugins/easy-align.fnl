[{1 :junegunn/vim-easy-align
  :keys [["={" "vi{<C-v>$:EasyAlign\\ g/^\\S/<CR>" {:buffer true :silent true}]
         ["=[" "vi[<C-v>$:EasyAlign\\ g/^\\S/<CR>" {:buffer true :silent true}]
         ["=(" "vi(<C-v>$:EasyAlign\\ g/^\\S/<CR>" {:buffer true :silent true}]]
  :init (fn []
          ; start interactive EasyAlign in visual mode (e.g. vipga)
          (vim.keymap.set :x :<leader>ea "<Plug>(EasyAlign)" {})
          ; start interactive EasyAlign for a motion/text object (e.g. gaip)
          (vim.keymap.set :n :<leader>ea "<Plug>(EasyAlign)" {}))}]

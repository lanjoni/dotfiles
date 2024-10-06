[{1 :aserowy/tmux.nvim
  :config (fn []
            (let [tmux (require :tmux)]
              (tmux.setup {:copy_sync {:redirect_to_clipboard true}})))}

 {1 :christoomey/vim-tmux-navigator
  :lazy false
  :cmd {:TmuxNavigateLeft
        :TmuxNavigateDown
        :TmuxNavigateUp
        :TmuxNavigateRight}
  :keys [[:<c-h> :<cmd><C-U>TmuxNavigateLeft<cr>]
         [:<c-j> :<cmd><C-U>TmuxNavigateDown<cr>]
         [:<c-k> :<cmd><C-U>TmuxNavigateUp<cr>]
         [:<c-l> :<cmd><C-U>TmuxNavigateRight<cr>]
         ["<c-\\>" :<cmd><C-U>TmuxNavigatePrevious<cr>]]}]

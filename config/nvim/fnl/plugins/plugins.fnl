[;; git
 {1 :tpope/vim-fugitive}
 {1 :lewis6991/gitsigns.nvim
  :config (fn []
            (let [gitsigns (require :gitsigns)]
              (gitsigns.setup {})))}

 ;; commeting code
 {1 :numToStr/Comment.nvim
  :opts {:toggler {:line "<leader>cc"
                   :block "<leader>cb"}
         :opleader {:line "<leader>cc"
                    :block "<leader>cb"}
         :extra {:above "<leader>cO"
                 :below "<leader>co"
                 :eol "<leader>cA"}}}

 ;; fennel indent
 {1 :bakpakin/fennel.vim
  :lazy true
  :ft [:fennel]}

 ;; janet indent
 {1 :bakpakin/janet.vim
  :lazy true
  :ft [:janet]}]

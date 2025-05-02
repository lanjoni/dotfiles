[{1 :HakonHarnes/img-clip.nvim
  :event :VeryLazy
  :opts {:default {:drag_and_drop {:insert_mode true}
                   :embed_image_as_base64 false
                   :prompt_for_file_name false}}}

 {1 :MeanderingProgrammer/render-markdown.nvim
  :ft [:markdown :Avante]
  :opts {:file_types [:markdown :Avante]
         :render_modes true
         :sign {:enabled false}}
  :dependencies [:nvim-treesitter/nvim-treesitter
                 :nvim-tree/nvim-web-devicons]}

 {1 :yetone/avante.nvim
  :tag "v0.0.23"
  :build :make
  :event :VeryLazy
  :opts {:provider :copilot}
  :version false
  :dependencies [:nvim-treesitter/nvim-treesitter
                 :stevearc/dressing.nvim
                 :nvim-lua/plenary.nvim
                 :MunifTanjim/nui.nvim
                 :echasnovski/mini.pick
                 :nvim-telescope/telescope.nvim
                 :hrsh7th/nvim-cmp
                 :ibhagwan/fzf-lua
                 :nvim-tree/nvim-web-devicons
                 :zbirenbaum/copilot.lua]}]

[{1 :epwalsh/obsidian.nvim
  :version "*"
  :lazy true
  :ft "markdown"
  :dependencies [:nvim-lua/plenary.nvim] 
  :config (fn []
            (let [obsidian (require :obsidian)] 
              (obsidian.setup {:workspaces [{:name "catastrofe"
                                             :path "~/vaults/catastrofe"}]
                               :daily_notes {:folder "daily"}
                               :mappings {:<cr> {:action (fn []
                                                           ((. (require :obsidian) :util :smart_action)))
                                                 :opts {:buffer true :expr true}}
                                          :<leader>ch {:action (fn []
                                                                 ((. (require :obsidian) :util
                                                                     :toggle_checkbox)))
                                                       :opts {:buffer true}}
                                          :gf {:action (fn []
                                                         ((. (require :obsidian) :util :gf_passthrough)))
                                               :opts {:buffer true :expr true :noremap false}}}})
              (set vim.opt.conceallevel 1)))}]

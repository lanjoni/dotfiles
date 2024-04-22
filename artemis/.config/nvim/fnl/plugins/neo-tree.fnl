[{1 :nvim-neo-tree/neo-tree.nvim
  :branch :v3.x
  :lazy false
  :priority 1000
  :dependencies [:nvim-lua/plenary.nvim
                 :nvim-tree/nvim-web-devicons
                 :MunifTanjim/nui.nvim]
  :keys [{1 "<leader>n" 
          2 ":Neotree toggle left<CR>" 
          :silent true 
          :desc "Open left file explorer"}]
  :config (fn []
            ((. (require :neo-tree) :setup) 
             {:close_if_last_window true
              :default_component_configs {:git_status 
                                          {:symbols 
                                           {:added ""
                                            :conflict ""
                                            :deleted ""
                                            :ignored ""
                                            :modified ""
                                            :renamed ""
                                            :staged ""
                                            :unstaged ""
                                            :untracked ""}}
                                          :indent {:with_expanders true
                                                   :with_markers true}
                                          :modified {:highlight :NeoTreeModified
                                                     :symbol " "}}
              :enable_diagnostics true
              :enable_git_status true
              :enable_modified_markers true
              :filesystem {:filtered_items 
                           {:hide_by_name [:node_modules]
                            :hide_dotfiles false
                            :hide_gitignored false
                            :never_show [:.DS_Store
                                         :thumbs.db]}
                           :use_libuv_file_watcher true}
              :popup_border_style :single
              :sort_case_insensitive true
              :window {:position :left
                       :width 30}}))}]

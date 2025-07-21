(local {: autoload} (require :nfnl.module))
(local lsp (autoload :config.lsp))

(fn lsp_connection []
  (let [message (lsp.get-progress-message)]
    (if
      ;; if has progress handler and is loading
      (or (= message.status "begin")
          (= message.status "report"))
      (.. message.msg " : " message.percent "%% ")

      ;; if has progress handler and finished loading
      (= message.status "end")
      ""

      ;; if hasn't progress handler, but has connected lsp client
      (and (= message.status "")
           (not (vim.tbl_isempty (vim.lsp.get_clients))))
      ""

      ;; else
      "")))

[{1 :nvim-lualine/lualine.nvim
  :config (fn []
            (let [lualine (require :lualine)]
              (lualine.setup
                {:options {:theme "tairiki"
                           :icons_enabled true
                           :global_status true
                           :section_separators ["" ""]
                           :component_separators ""
                           :disabled_filetypes [:DiffviewFiles
                                                :fzf
                                                :DiffviewFileHistory]}
                 :extensions [:fugitive
                              :fzf
                              :nvim-tree
                              :avante]
                 :sections {:lualine_b []
                            :lualine_c [["FugitiveHead"]
                                        {1 :filename
                                         :file_status true
                                         :path 1
                                         :shorting_target 40}]
                            :lualine_x [{1 :diagnostics
                                         :sections [:error :warn :info :hint]
                                         :sources [:nvim_lsp]}
                                        [lsp_connection]
                                        :location
                                        :filetype]
                            :lualine_y [:encoding]
                            :lualine_z []}
                 :inactive_sections {:lualine_a []
                                     :lualine_b []
                                     :lualine_c []
                                     :lualine_x []
                                     :lualine_y []
                                     :lualine_z []}})))}]

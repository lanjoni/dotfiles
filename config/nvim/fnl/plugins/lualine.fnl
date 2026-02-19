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

;; defining base theme
(local background "#0D0D0D")
(local foreground "#635E5A")
(local kanagawa
  {:normal {:a {:bg "#957FB8" :fg background}
            :b {:bg background :fg "#957FB8"}
            :c {:bg background :fg "#DCD7BA"}}
   :insert {:a {:bg "#76946A" :fg background}
            :b {:bg background :fg "#76946A"}}
   :command {:a {:bg "#C0A36E" :fg background}
             :b {:bg background :fg "#C0A36E"}}
   :visual {:a {:bg "#7E9CD8" :fg background}
            :b {:bg background :fg "#7E9CD8"}}
   :replace {:a {:bg "#C34043" :fg background}
             :b {:bg background :fg "#C34043"}}
   :inactive {:a {:bg background :fg foreground}
              :b {:bg background :fg foreground :gui "bold"}
              :c {:bg background :fg foreground}}})

[{1 :nvim-lualine/lualine.nvim
  :config (fn []
            (let [lualine (require :lualine)]
              (lualine.setup
                {:options {:theme kanagawa
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
                 :sections {:lualine_a [{1 :mode
                                         :fmt (fn [s] (s:lower))}]
                            :lualine_b []
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

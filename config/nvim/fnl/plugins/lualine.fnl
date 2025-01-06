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
           (not (vim.tbl_isempty (vim.lsp.buf_get_clients 0))))
      ""

      ;; else
      "")))

(local background "#16161d")
(local kanagawa
  {:normal {:a {:bg "#957FB8" :fg "#16161D"}
            :b {:bg background :fg "#957FB8"}
            :c {:bg background :fg "#DCD7BA"}}
   :insert {:a {:bg "#76946A" :fg "#16161D"}
            :b {:bg background :fg "#76946A"}}
   :command {:a {:bg "#C0A36E" :fg "#16161D"}
             :b {:bg background :fg "#C0A36E"}}
   :visual {:a {:bg "#7E9CD8" :fg "#16161D"}
            :b {:bg background :fg "#7E9CD8"}}
   :replace {:a {:bg "#C34043" :fg "#16161D"}
             :b {:bg background :fg "#C34043"}}
   :inactive {:a {:bg "#0D1014" :fg "#7E9CD8"}
              :b {:bg "#0D1014" :fg "#727169" :gui "bold"}
              :c {:bg "#0D1014" :fg "#727169"}}})

(local grey14 "#16161D")
(local grey15 "#181820")
(local grey16 "#16161D")

(if vim.g.kanagawa_lualine_bold
  (for [_ mode (pairs kanagawa)]
    (set mode.a.gui "bold")))

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
                              :nvim-tree]
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

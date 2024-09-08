(local {: autoload} (require :nfnl.module))
(local nvim (autoload :nvim))

[{1 :akinsho/toggleterm.nvim
  :config (fn []
            (let [toggleterm (require :toggleterm)]
              (toggleterm.setup 
                {:open_mapping "<leader>to"
                 :direction "vertical"
                 :size 120
                 :shade_terminals true
                 :start_in_insert true
                 :insert_mappings false
                 :terminal_mappings false})))
  :init (fn []
          (nvim.set_keymap :n :<leader>tl ":TermSelect<CR>" {:noremap true})
          (nvim.ex.tnoremap :<esc> :<c-\><c-n>)
          (nvim.ex.tnoremap :<c-h> :<c-\><c-n><c-w>h)
          (nvim.ex.tnoremap :<c-j> :<c-\><c-n><c-w>j)
          (nvim.ex.tnoremap :<c-k> :<c-\><c-n><c-w>k)
          (nvim.ex.tnoremap :<c-l> :<c-\><c-n><c-w>l)

          ;; configure clojure testing tools 
          ;; todo: make this more readable and not so imperative
          (local Terminal (. (require :toggleterm.terminal) :Terminal))

          (var cmd "")

          (if (= (vim.fn.filereadable :project.clj) 1) (set cmd "lein test")
            (= (vim.fn.filereadable :deps.edn) 1) (set cmd "clojure -T:build test")
            (do
              (print "No Clojure test configuration file found.")
              (lua "return ")))

          (local clojure-test
            (Terminal:new {:close_on_exit false
                           :cmd cmd
                           :direction :float
                           :hidden true
                           :on_close (fn [term] (vim.cmd :startinsert!))
                           :on_open (fn [term] (vim.cmd :startinsert!)
                                      (vim.api.nvim_buf_set_keymap term.bufnr :n :q
                                                                   :<cmd>close<CR>
                                                                   {:noremap true
                                                                    :silent true}))}))

          (fn _G._clojure_test_toggle [] (clojure-test:toggle))

          (vim.api.nvim_set_keymap :n :<leader>tt "<cmd>lua _clojure_test_toggle()<CR>"
                                   {:noremap true :silent true}))}]

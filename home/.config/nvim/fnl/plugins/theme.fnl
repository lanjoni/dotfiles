(fn dark-mode? []
  (= "Dark"
     (vim.trim
       (vim.fn.system
         ["defaults" "read" "-g" "AppleInterfaceStyle"]))))

(fn set-initial-theme []
  (let [dark? (dark-mode?)]
    (vim.api.nvim_set_option_value
      "background"
      (if dark? "dark" "light")
      {})
    (vim.cmd
      (.. "colorscheme "
          (if dark? "lackluster" "lackluster-day")))))

[{1 :lanjoni/lackluster.nvim
  :lazy false
  :priority 1000
  :branch "feat/lackluster-day-variant"
  :config set-initial-theme}]

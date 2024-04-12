(local {: autoload} (require :nfnl.module))
(local nvim (autoload :nvim))

;space is reserved to be lead
(nvim.set_keymap :n :<space> :<nop> {:noremap true})

;motions for windows
(nvim.set_keymap :n :<c-k> ":wincmd k<CR>" {:noremap false})
(nvim.set_keymap :n :<c-j> ":wincmd j<CR>" {:noremap false})
(nvim.set_keymap :n :<c-h> ":wincmd h<CR>" {:noremap false})
(nvim.set_keymap :n :<c-l> ":wincmd l<CR>" {:noremap false})
(nvim.set_keymap :n :<leader>h ":nohlsearch<CR>" {:noremap false})

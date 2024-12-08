(local {: autoload} (require :nfnl.module))
(local nvim (autoload :nvim))

;; space is reserved to be lead
(nvim.set_keymap :n :<space> :<nop> {:noremap true})

;; clear highlighting on enter in normal mode
(nvim.set_keymap :n :<CR> ":noh<CR><CR>" {:noremap true})

;; duplicate currents panel in a new tab
(nvim.set_keymap :n :<C-w>T ":tab split<CR>" {:noremap true :silent true})

;; escape from terminal normal mode
(nvim.set_keymap :t :<esc><esc> "<c-\\><c-n>" {:noremap true})

;; motions for windows
(nvim.set_keymap :n :<c-k> ":wincmd k<CR>" {:noremap false})
(nvim.set_keymap :n :<c-j> ":wincmd j<CR>" {:noremap false})
(nvim.set_keymap :n :<c-h> ":wincmd h<CR>" {:noremap false})
(nvim.set_keymap :n :<c-l> ":wincmd l<CR>" {:noremap false})
(nvim.set_keymap :n :<leader>h ":nohlsearch<CR>" {:noremap false})

;; buffers navigation
(nvim.set_keymap :n :<leader>ll ":bnext<CR>" {:noremap true})
(nvim.set_keymap :n :<C-C-i>    ":bnext<CR>" {:noremap true})
(nvim.set_keymap :n :<leader>hh ":bprev<CR>" {:noremap true})
(nvim.set_keymap :n :<leader>k  ":bdelete<CR>" {:noremap true})

;; clear hidden buffers
(fn clear-hidden-buffers []
  (each [_ buffer (pairs (vim.fn.getbufinfo))]
    (when (= buffer.hidden 1) (vim.cmd.bd buffer.bufnr))))

(vim.keymap.set :n :<Leader>bd clear-hidden-buffers {:noremap true :silent false})

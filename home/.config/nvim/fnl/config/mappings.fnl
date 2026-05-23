;; space is reserved to be lead
(vim.keymap.set :n :<space> :<nop> {:noremap true})

;; clear highlighting on enter in normal mode
(vim.keymap.set :n :<CR> ":noh<CR><CR>" {:noremap true})

;; duplicate currents panel in a new tab
(vim.keymap.set :n :<C-w>T ":tab split<CR>" {:noremap true :silent true})

;; escape from terminal normal mode
(vim.keymap.set :t :<esc><esc> "<c-\\><c-n>" {:noremap true})

;; motions for windows
(vim.keymap.set :n :<c-k> ":wincmd k<CR>" {:noremap false})
(vim.keymap.set :n :<c-j> ":wincmd j<CR>" {:noremap false})
(vim.keymap.set :n :<c-h> ":wincmd h<CR>" {:noremap false})
(vim.keymap.set :n :<c-l> ":wincmd l<CR>" {:noremap false})
(vim.keymap.set :n :<leader>h ":nohlsearch<CR>" {:noremap false})

;; buffers navigation
(vim.keymap.set :n :<leader>ll ":bnext<CR>" {:noremap true})
(vim.keymap.set :n :<C-C-i>    ":bnext<CR>" {:noremap true})
(vim.keymap.set :n :<leader>hh ":bprev<CR>" {:noremap true})
(vim.keymap.set :n :<leader>k  ":bdelete<CR>" {:noremap true})

;; clear hidden buffers
(fn clear-hidden-buffers []
  (each [_ buffer (pairs (vim.fn.getbufinfo))]
    (when (= buffer.hidden 1) (vim.cmd.bd buffer.bufnr))))

(vim.keymap.set :n :<Leader>bd clear-hidden-buffers {:noremap true :silent false})

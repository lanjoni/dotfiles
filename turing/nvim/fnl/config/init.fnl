(local {: autoload} (require :nfnl.module))
(local nvim (autoload :nvim))
(local core (autoload :nfnl.core))

;space is reserved to be lead
(nvim.set_keymap :n :<space> :<nop> {:noremap true})

;motions for windows
(nvim.set_keymap :n :<c-k> ":wincmd k<CR>" {:noremap false})
(nvim.set_keymap :n :<c-j> ":wincmd j<CR>" {:noremap false})
(nvim.set_keymap :n :<c-h> ":wincmd h<CR>" {:noremap false})
(nvim.set_keymap :n :<c-l> ":wincmd l<CR>" {:noremap false})
(nvim.set_keymap :n :<leader>h ":nohlsearch<CR>" {:noremap false})

;sets a nvim global options
(let [options
      {;tabs is space
       :expandtab true
       ;tab/indent size
       :tabstop 2
       :shiftwidth 2
       :softtabstop 2
       :relativenumber true
       ;settings needed for compe autocompletion
       :completeopt "menuone,noselect"
       ;case insensitive search
       :ignorecase true
       ;smart search case
       :smartcase true
       ;shared clipboard with linux
       :clipboard "unnamedplus"
       ;show line numbers
       :number true
       ;show line and column number
       :ruler true
       ;makes signcolumn always one column with signs and linenumber
       :signcolumn "number"}]
  (each [option value (pairs options)]
    (core.assoc nvim.o option value)))

{}

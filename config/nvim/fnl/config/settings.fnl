(local {: autoload} (require :nfnl.module))
(local nvim (autoload :nvim))
(local str (autoload :nfnl.string))
(local core (autoload :nfnl.core))

;; sets a nvim global options
(let [options
      {;; tabs is space
       :expandtab true
       ;; color column
       :colorcolumn "80"
       ;; tab/indent size
       :tabstop 2
       :shiftwidth 2
       :softtabstop 2
       ;; remove wrap
       :wrap false
       ;; settings needed for compe autocompletion
       :completeopt "menuone,noselect"
       ;; error bells
       :errorbells true
       ;; disable backup
       :backup false
       ;; disable swapfile
       :swapfile false
       ;; case insensitive search
       :ignorecase true
       ;; smart search case
       :smartcase true
       ;; shared clipboard
       :clipboard "unnamedplus"
       ;; show invisible characters
       :list true
       :listchars (str.join "," ["tab:▶-" "trail:•" "extends:»" "precedes:«" "eol:¬"])
       ;; persistent undo
       :undofile true
       ;; open new horizontal panes on down pane
       :splitbelow true
       ;; open new vertical panes on right pane
       :splitright true
       ;; enable highlighting search
       :hlsearch true
       ;; show line numbers
       :number true
       ;; show line and column number
       :ruler true
       ;; show relative line number
       :relativenumber false
       ;; show cursor line
       :cursorline false
       ;; makes signcolumn always one column with signs and linenumber
       :signcolumn "yes:1"
       ;; show status column
       :statuscolumn "%=%l %s"}]
  (each [option value (pairs options)]
    (core.assoc nvim.o option value)))

{}

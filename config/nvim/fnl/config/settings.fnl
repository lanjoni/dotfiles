(local {: autoload} (require :nfnl.module))
(local str (autoload :nfnl.string))
(local core (autoload :nfnl.core))

;; refresh changed content
(vim.api.nvim_create_autocmd
  [:FocusGained :BufEnter]
  {:pattern [:*]
   :command "checktime"})

;; rust tabsize
(vim.api.nvim_create_autocmd
  [:FileType]
  {:pattern [:rust]
   :command "setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab"})

;; go tabsize
(vim.api.nvim_create_autocmd
  [:FileType]
  {:pattern [:go]
   :command "setlocal tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab"})

;; sets a nvim global options
(let [options
      {;; tabs is space
       :expandtab true
       ;; tab/indent size
       :tabstop 2
       :shiftwidth 2
       :softtabstop 2
       :colorcolumn "120"
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
    (core.assoc vim.o option value)))

{}

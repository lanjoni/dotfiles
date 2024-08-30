export TERM="tmux-256color"

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="lambda"

plugins=(git fzf zsh-autosuggestions tmux)
source $ZSH/oh-my-zsh.sh

alias vim="nvim"
alias n="nvim"
export EDITOR=nvim

setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
setopt HIST_BEEP                 # Beep when accessing nonexistent history.

HISTSIZE=10000000                # history size
SAVEHIST=10000000                # history save size
DISABLE_AUTO_TITLE="true"        # avoid window rename
KEYTIMEOUT=1                     # remove delay

# Brew
export PATH="/opt/homebrew/bin:$PATH"

# PATH adds
PATH="$HOME/.local/bin:/usr/local/bin":$PATH
PATH="$HOME/.cargo/bin:$HOME/.cargo/bin/racer":$PATH

# clojure
alias clj='clojure'

# lazygit
alias lg='lazygit'

# datomic
alias start-transactor-dev='~/datomic/datomic-pro-1.0.7187/bin/transactor ~/datomic/datomic-pro-1.0.7187/config/dev-transactor-template.properties'

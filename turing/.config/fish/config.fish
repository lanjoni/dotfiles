if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx fish_greeting ""
set -Ux TERM xterm-256color

# idk how to fix this but
# nvm with fisher isn't 
# working well :(
nvm use lts >> /dev/null

if type -q nvim
  set -gx EDITOR nvim
  set -gx VISUAL nvim
  set -gx MANPAGER "nvim +Man!"
  alias vimdiff="nvim -d"
end

# Other git aliases are in git config
alias g="git"
alias gg="g a .; and g c -a"
alias lg="lazygit"
alias lk="lazydocker"
alias n="nvim"
alias vim="nvim"
alias install="sudo pacman -Sy"
alias update="sudo pacman -Syu"
alias remove="sudo pacman -R"
alias autoremove='sudo pacman -R $(pacman -Qdtq)'
alias ssh="kitten ssh"
alias felix="kitten ssh felix@209.133.204.26 -p 13031"

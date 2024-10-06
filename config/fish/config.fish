if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx fish_greeting ""
# set -Ux TERM xterm-256color
# only for alacritty usage
set -Ux TERM alacritty-direct

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
alias l="ls"
alias ll="ls -l"
alias cljn="clojure -Tnew app :name"
alias n="nvim"
alias vim="nvim"
# alias composer='docker run --rm -v $(pwd):/app composer'
alias composer='docker run --rm -v $(pwd):/var/www/composer ghcr.io/devgine/composer-php:v2-php8.1-alpine composer'
if test "$TERM" = "xterm-kitty"
  alias ssh="kitten ssh"
  alias felix="kitten ssh felix@209.133.204.26 -p 13031"
else
  alias ssh="ssh"
  alias felix="ssh felix@209.133.204.26 -p 13031"
end

eval "$(/opt/homebrew/bin/brew shellenv)"

source /opt/homebrew/opt/asdf/libexec/asdf.fish

set PATH $PATH ~/.cargo/bin
set -x PATH $PATH $HOME/.pub-cache/bin
set -gx LDFLAGS "-L/opt/homebrew/opt/ruby/lib"
set -gx CPPFLAGS "-I/opt/homebrew/opt/ruby/include"
set -gx PKG_CONFIG_PATH "/opt/homebrew/opt/ruby/lib/pkgconfig"
set -x GPG_TTY (tty)

set -x ANDROID_HOME $HOME/Library/Android/sdk
set -x PATH $PATH $ANDROID_HOME/emulator
set -x PATH $PATH $ANDROID_HOME/tools
set -x PATH $PATH $ANDROID_HOME/tools/bin
set -x PATH $PATH $ANDROID_HOME/platform-tools

# Lackluster theme
# ____   _________________________   ____________________________________
# 7  7   7  _  77     77  7  77  7   7  7  77     77      77     77  _  7
# |  |   |  _  ||  ___!|   __!|  |   |  |  ||  ___!!__  __!|  ___!|    _|
# |  !___|  7  ||  7___|     ||  !___|  |  |!__   7  7  7  |  __|_|  _ \
# |     7|  |  ||     7|  7  ||     7|  !  |7     |  |  |  |     7|  7  |
# !_____!!__!__!!_____!!__!__!!_____!!_____!!_____!  !__!  !_____!!__!__!
#
#  Name: lackluster.nvim
#  License: MIT
#  Maintainer: Duncan Marsh (slugbyte@slugbyte.com)
#  Repository: https://github.com/slugbyte/lackluster.nvim

# copy this code in to your fish config
set -gx fish_color_end 7a7a7a
set -gx fish_color_error ffaa88
set -gx fish_color_quote 708090
set -gx fish_color_param aaaaaa
set -gx fish_color_option aaaaaa
set -gx fish_color_normal CCCCCC
set -gx fish_color_escape 789978
set -gx fish_color_comment 555555
set -gx fish_color_command CCCCCC
set -gx fish_color_keyword 7a7a7a
set -gx fish_color_operator 7788aa
set -gx fish_color_redirection ffaa88
set -gx fish_color_autosuggestion 2a2a2a
set -gx fish_color_selection --background=555555
set -gx fish_color_search_match --background=555555
set -gx fish_pager_color_prefix 999999
set -gx fish_pager_color_progress 555555
set -gx fish_pager_color_completion cccccc
set -gx fish_pager_color_description 7a7a7a
set -gx fish_pager_color_selected_background --background=555555

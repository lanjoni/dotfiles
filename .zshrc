# Find and set branch name var if in git repository.
function git_branch_name()
{
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo '%F{magenta}['$branch']%f '
  fi
}

# Enable substitution in the prompt.
setopt prompt_subst

# NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Evals
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(rbenv init - zsh)"

# rbenv
export PATH="/Users/guto/.rbenv/versions/3.2.2/bin:$PATH"

# ASDF
. "$HOME/.asdf/asdf.sh"

# PROMPT='%F{073}%n%f@%F{208}%m%f %F{021}%~%f %% '

# Alias
alias ll="ls -la"
alias l="ls -l"
alias python=python3

export PATH=$PATH:/opt/homebrew/bin
export PATH="$HOME/.emacs.d/bin:$PATH"
export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"
export KERL_BUILD_DOCS="yes"
export ERL_AFLAGS="-kernel shell_history enabled"
export KERL_CONFIGURE_OPTIONS="--with-ssl=$(brew --prefix openssl)"
export PS1='%n@%m %F{green}%~%f $(git_branch_name)%# '
export EDITOR='vim'
export CLICOLOR=1
export TERM=xterm
export LDFLAGS="-L/opt/homebrew/opt/openssl@1.1/lib"
export CPPFLAGS="-I/opt/homebrew/opt/openssl@1.1/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@1.1/lib/pkgconfig"
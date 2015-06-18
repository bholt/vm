# Path to your oh-my-zsh installation.
export ZSH=/root/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bholt"

DISABLE_AUTO_UPDATE="true"
DISABLE_UPDATE_PROMPT="true"
DISABLE_AUTO_TITLE="true"

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git osx brew textmate zsh-history-substring-search zsh-syntax-highlighting)

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

source $ZSH/oh-my-zsh.sh

# emacs mode
bindkey -e

# vi style incremental search
bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward
bindkey '^P' history-search-backward
bindkey '^N' history-search-forward

# bind UP and DOWN arrow keys
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# bind P and N for EMACS mode
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down

eval $(dircolors ~/.dircolorsrc)

# common aliases
alias ls='ls --color=auto'
alias ll='ls -lah'
alias g='git'

function fcat {
  for f in $*; do
    echo "# $f"
    echo "<<<"
    cat $f
    echo ">>>"
  done
}

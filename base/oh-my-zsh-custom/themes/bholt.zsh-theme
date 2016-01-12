function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || hostname -s
}

source $ZSH/custom/zsh-git-prompt.sh

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[black]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[black]%}]"
ZSH_THEME_GIT_PROMPT_SEPARATOR="%{$fg[black]%}|"
ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[blue]%}%{+%G%}"
ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$fg[red]%}%{✗%G%}"
ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[yellow]%}%{⚡%G%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{↓%G%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{↑%G%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{…%G%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}%{✓%G%}"

PROMPT='%{$fg[cyan]%}$(box_name)%{$reset_color%} %{$fg[yellow]%}${PWD/#$HOME/~}%{$reset_color%} $(git_super_status)$(virtualenv_info)%{$fg[cyan]%}➤%{$reset_color%}  '

local return_status="%{$fg[red]%}%(?..⤬)%{$reset_color%}"
RPROMPT='${return_status}%{$reset_color%}'

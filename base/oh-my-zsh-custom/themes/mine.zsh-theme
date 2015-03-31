function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || hostname -s
}

PROMPT='%{$fg[yellow]%}$(box_name)%{$reset_color%} %{$fg[green]%}${PWD/#$HOME/~}%{$reset_color%} $(git_prompt_info)$(virtualenv_info)%(?,,%{${fg_bold[blue]}%}[%?]%{$reset_color%} )%{$fg[yellow]%}>%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[magenta]%}⊚"
ZSH_THEME_GIT_PROMPT_UNTRACKED=" %{$fg[magenta]%}⊕"
ZSH_THEME_GIT_PROMPT_CLEAN=""

local return_status="%{$fg[red]%}%(?..⤬)%{$reset_color%}"
RPROMPT='${return_status}%{$reset_color%}'

# [ -f /etc/DIR_COLORS ] && eval $(dircolors -b /etc/DIR_COLORS)
# export ZLSCOLORS="${LS_COLORS}"

# export LS_COLORS="d=i1;;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:"
export CLICOLOR=YES
zstyle ':completion:*:default' list-colors ''

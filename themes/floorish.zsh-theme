export LSCOLORS="exfxcxdxbxegedabagacxb"

if [[ -n $SSH_CONNECTION ]]; then
  local hst="%{$fg[red]%}[%m]"
else
  local hst="%{$fg[grey]%}[%m]"
fi


PROMPT='${hst} %{$fg[green]%}${PWD/#$HOME/~} $(git_prompt_info)$(hg_prompt)%{$fg_bold[white]%}%(!.#.$) %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="]%{$fg[red]%}* "
ZSH_THEME_GIT_PROMPT_CLEAN="] "

hg_prompt() {
    hg prompt "%{$fg[blue]%}[{branch}]%{$fg[red]%}{status} " 2> /dev/null
}

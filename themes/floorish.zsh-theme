export LSCOLORS="exfxcxdxbxegedabagacxb"

if [[ -n $SSH_CONNECTION ]]; then
  local hst="%{$fg[red]%}[%m]"
else
  local hst="%{$fg[grey]%}[%m]"
fi


PROMPT='${hst} %{$fg[green]%}${PWD/#$HOME/~} $(git_prompt_info)%{$fg_bold[white]%}%(!.#.$) %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="]%{$fg[red]%}* "
ZSH_THEME_GIT_PROMPT_CLEAN="] "

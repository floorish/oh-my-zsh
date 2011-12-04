export LSCOLORS="exfxcxdxbxegedabagacxb"

PROMPT='%{$fg[green]%}${PWD/#$HOME/~} %{$fg_bold[grey]%}$(git_prompt_info)%{$fg_bold[white]%}%(!.#.$) %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[grey]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[grey]%}]%{$fg[red]%}* "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[grey]%}] "

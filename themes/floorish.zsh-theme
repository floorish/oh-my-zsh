export LSCOLORS="exfxcxdxbxegedabagacxb"

PROMPT='%{$fg[green]%}${PWD/#$HOME/~} $(git_prompt_info)$(hg_prompt)%{$fg_bold[white]%}%(!.#.$) %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[grey]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[grey]%}]%{$fg[red]%}* "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[grey]%}] "

hg_prompt() {
    hg prompt "%{$fg[grey]%}[{branch}]%{$fg[red]%}{status} " 2> /dev/null
}

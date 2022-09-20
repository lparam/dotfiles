ZSH=$HOME/.oh-my-zsh
ZSH_THEME="lparam"
plugins=(git tmux vi-mode docker themes zsh-autosuggestions z.lua kubetail fast-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

bindkey -v
bindkey -M viins 'jj' vi-cmd-mode
bindkey '^R' history-incremental-search-backward
bindkey '^ ' autosuggest-accept

# color
autoload colors
colors

for color in RED GREEN YELLOW BLUE MAGENTA CYAN WHITE; do
    eval _$color='%{$terminfo[bold]$fg[${(L)color}]%}'
    eval $color='%{$fg[${(L)color}]%}'
    (( count = $count + 1 ))
done
FINISH="%{$terminfo[sgr0]%}"

export PAGER="/usr/bin/most -s"

DISABLE_AUTO_TITLE=true

test -r ~/.dir_colors && eval "$(dircolors -b ~/.dir_colors)" || eval "$(dircolors -b)"

#命令别名 {{{
# alias cp='cp -i'
# alias mv='mv -i'
# alias rm='rm -i'
alias ls='lsd -F --color=auto'
alias ll='ls -alh'
alias grep='grep --color -n'
alias la='ls -a'
alias make='colormake'
alias vim='nocorrect vim'
alias krew='nocorrect krew'

# k8s
alias k='kubectl'
alias ka='kubectl apply --recursive -f'
alias kex='kubectl exec -i -t'
alias kl='kubectl logs -f'
alias kd='kubectl describe'
alias kg='kubectl get'
alias kgc="kubectl -n infra get pod -o jsonpath='{.spec.containers[*].name}'"
#}}}

CORRECT_IGNORE_FILE=".krew|.config|.ssh"


#[Esc][h] man 当前命令时，显示简短说明
alias run-help >&/dev/null && unalias run-help
autoload run-help

#路径别名 {{{
#进入相应的路径时只要 cd ~xxx
hash -d D="/home/lparam/Downloads"
#}}}


##在命令前插入 sudo {{{
#定义功能
sudo-command-line() {
    [[ -z $BUFFER ]] && zle up-history
    [[ $BUFFER != sudo\ * ]] && BUFFER="sudo $BUFFER"
    zle end-of-line                 #光标移动到行末
}
zle -N sudo-command-line
#定义快捷键为： [Esc] [Esc]
bindkey "\e\e" sudo-command-line
#}}}


setopt correctall
autoload compinstall

#每个目录使用独立的历史纪录{{{
cd() {
    builtin cd "$@"                             # do actual cd
    fc -W                                       # write current history file
    local HISTDIR="$HOME/.zsh_history$PWD"      # use nested folders for history
    if  [ ! -d "$HISTDIR" ] ; then              # create folder if needed
        mkdir -p "$HISTDIR"
    fi
    export HISTFILE="$HISTDIR/zhistory"     # set new history file
    touch $HISTFILE
    local ohistsize=$HISTSIZE
    HISTSIZE=0                              # Discard previous dir's history
    HISTSIZE=$ohistsize                     # Prepare for new dir's history
    fc -R                                   # read from current histfile
}
mkdir -p $HOME/.zsh_history$PWD
export HISTFILE="$HOME/.zsh_history$PWD/zhistory"

function allhistory { cat $(find $HOME/.zsh_history -name zhistory) }
function convhistory {
    sort $1 | uniq |
    sed 's/^:\([ 0-9]*\):[0-9]*;\(.*\)/\1::::::\2/' |
    awk -F"::::::" '{ $1=strftime("%Y-%m-%d %T",$1) "|"; print }'
}
#使用 histall 命令查看全部历史纪录
function histall {
    convhistory =(allhistory) | sed '/^.\{20\} *cd/i\\'
}
#使用 hist 查看当前目录历史纪录
function hist { convhistory $HISTFILE }

#历史命令 top10
alias top10='print -l  ${(o)history%% *} | uniq -c | sort -nr | head -n 10'

#全部历史纪录 top50
function top50 { allhistory | awk -F':[ 0-9]*:[0-9]*;' '{ $1="" ; print }' | sed 's/ /\n/g' | sed '/^$/d' | sort | uniq -c | sort -nr | head -n 50 }


# 以下字符视为单词的一部分
WORDCHARS='*?_-[]~=&;!#$%^(){}<>'

# 自动补全功能
setopt AUTO_LIST
setopt AUTO_MENU

# 自动补全选项
zstyle ':completion:*' verbose yes
zstyle ':completion:*' menu select
zstyle ':completion:*:*:default' force-list always
zstyle ':completion:*' select-prompt '%SSelect:  lines: %L  matches: %M  [%p]'

zstyle ':completion:*:match:*' original only
zstyle ':completion::prefix-1:*' completer _complete
# 自动补全选项
zstyle ':completion:*' verbose yes
zstyle ':completion:*' menu select
zstyle ':completion:*:*:default' force-list always
zstyle ':completion:*' select-prompt '%SSelect:  lines: %L  matches: %M  [%p]'

zstyle ':completion:*:match:*' original only
zstyle ':completion::prefix-1:*' completer _complete
# 自动补全选项
zstyle ':completion:*' verbose yes
zstyle ':completion:*' menu select
zstyle ':completion:*:*:default' force-list always
zstyle ':completion:*' select-prompt '%SSelect:  lines: %L  matches: %M  [%p]'

zstyle ':completion:*:match:*' original only
zstyle ':completion::prefix-1:*' completer _complete
zstyle ':completion:predict:*' completer _complete
zstyle ':completion:incremental:*' completer _complete _correct
zstyle ':completion:*' completer _complete _prefix _correct _prefix _match _approximate

# 路径补全
zstyle ':completion:*' expand 'yes'
zstyle ':completion:*' squeeze-shlashes 'yes'
zstyle ':completion::complete:*' '\\'

# 彩色补全菜单
eval $(dircolors -b)
export ZLSCOLORS="${LS_COLORS}"
zmodload zsh/complist
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'

# 修正大小写
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

# 错误校正
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric

# kill 命令补全
compdef pkill=kill
compdef pkill=killall
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:*:*:*:processes' force-list always
zstyle ':completion:*:processes' command 'ps -au$USER'

# 补全类型提示分组
zstyle ':completion:*:matches' group 'yes'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:options' auto-description '%d'
zstyle ':completion:*:descriptions' format $'\e[01;33m -- %d --\e[0m'
zstyle ':completion:*:messages' format $'\e[01;35m -- %d --\e[0m'
zstyle ':completion:*:warnings' format $'\e[01;31m -- No Matches Found --\e[0m'
zstyle ':completion:*:corrections' format $'\e[01;32m -- %d (errors: %e) --\e[0m'

# 行编辑高亮模式
zle_highlight=(region:bg=magenta	#选中区域
special:bold					    #特殊字符
isearch:underline)					#搜索时使用的关键字

LC_CTYPE="zh_CN.utf8"

fpath+=$HOME/.zfunc
fpath=($HOME/.zsh/completion $fpath)

# add auto-completion directory to zsh's fpath
if [ -f "/home/lparam/miniconda3/etc/profile.d/conda.sh" ]; then
    . "/home/lparam/miniconda3/etc/profile.d/conda.sh"
else
    export PATH="/home/lparam/miniconda3/bin:$PATH"
fi
unset __conda_setup
# <<< conda initialize <<<

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh"  ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion"  ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/lparam/.sdkman"
[[ -s "/home/lparam/.sdkman/bin/sdkman-init.sh" ]] && source "/home/lparam/.sdkman/bin/sdkman-init.sh"

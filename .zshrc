if [[ $- == *i* ]];then
  fastfetch --config ~/.config/fastfetch/config.jsonc
fi

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

plugins=(git vi-mode)
VI_MODE_SET_CURSOR=false

export ZSH="$HOME/.oh-my-zsh"
#JAVA config
export JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64
export MAVEN_HOME=/opt/apache-maven-3.9.12
export PATH="$JAVA_HOME/bin:$MAVEN_HOME/bin:$PATH"

ZSH_THEME="powerlevel10k/powerlevel10k"

#fast fetch

#ALIAS 
alias cls='clear'
alias docs='nvim ~/Documents/obsidian'

#git alias 
alias lg='lazygit'
alias gits='git status'
alias gita='git add'
alias gitc='git commit'
alias gitp='git push'

#docker alias
alias ld='sudo lazydocker'
alias docker='sudo docker'



source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

export ZSH=$HOME/.oh-my-zsh

if [ $TERM = 'linux' ]; then
    ZSH_THEME="simple"
else
    ZSH_THEME="robbyrussell"
fi

DISABLE_AUTO_TITLE="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
cp
docker
docker-compose
git
ssh-agent
vi-mode
)

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vi'
    export TERM='xterm-256color'
fi

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

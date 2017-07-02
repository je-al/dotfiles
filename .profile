#!/bin/sh
PATH="$HOME/.local/bin:$PATH"

export PAGER=less EDITOR=vim BROWSER=firefox
# smart case searching as in Vim
export LESS="-Ri"

# XDG basedir specification
[ -z $XDG_CONFIG_HOME ] && export XDG_CONFIG_HOME="$HOME/.config"
[ -z $XDG_DATA_HOME ] && export XDG_DATA_HOME="$HOME/.local/share"
[ -z $XDG_CACHE_HOME ] && export XDG_CACHE_HOME="$HOME/.cache"
if [ -z $XDG_DATA_DIRS ]; then
  export XDG_DATA_DIRS="/usr/local/share:/usr/share"
else
  export XDG_DATA_DIRS="/usr/local/share:/usr/share:$XDG_DATA_DIRS"
fi
if [ -z $XDG_CONFIG_DIRS ]; then
  export XDG_CONFIG_DIRS="/etc/xdg"
else
  export XDG_CONFIG_DIRS="/etc/xdg:$XDG_CONFIG_DIRS"
fi

export TERMINAL=$(which stterm)

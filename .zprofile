path+=(
$HOME/.local/bin
)
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vi'
  export TERM='xterm-256color'
else
  export EDITOR='vim'
  export TERMINAL=$(which stterm)
  export TERMCMD=$TERMINAL
fi

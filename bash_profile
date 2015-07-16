fortune | cowsay
#256 color terminal for Vim
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi

alias vim='/usr/bin/mvim -v'

#Bash completion for git
source ~/.github_completion.sh

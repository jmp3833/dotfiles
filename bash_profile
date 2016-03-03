export PATH=/Users/justin/.pyenv/versions/3.4.3/bin:$PATH

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /Users/justin/.pyenv/versions/3.4.3/lib/python3.4/site-packages/powerline/bindings/bash/powerline.sh

#256 color terminal for Vim
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi

#Bash completion for git
source ~/.github_completion.sh

alias vim="DYLD_FORCE_FLAT_NAMESPACE=1 vim"

export NVM_DIR="/Users/justin/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


export VISUAL=vim
export EDITOR="$VISUAL"

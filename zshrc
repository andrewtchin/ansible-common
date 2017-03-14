# ssh-agent
# Predictable SSH authentication socket location
# so that ssh-agent works on reattach to tmux sessions.
SOCK="/tmp/ssh-agent-$USER-screen"
if test $SSH_AUTH_SOCK && [ $SSH_AUTH_SOCK != $SOCK ]; then
    rm -f /tmp/ssh-agent-$USER-screen
    ln -sf $SSH_AUTH_SOCK $SOCK
    export SSH_AUTH_SOCK=$SOCK
fi

[[ -d "$HOME/go" ]] && export GOPATH=$HOME/go
[[ -n "$GOPATH" ]] && export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

alias vic='cd ~/go/src/github.com/vmware/vic'

alias la='ls -A'
alias ll='ls -alhF'
alias l='ls -alhF'

# antigen
source ~/.antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundles <<EOBUNDLES
    zsh-users/zsh-syntax-highlighting
    zsh-users/zsh-history-substring-search
    zsh-users/zsh-completions

    docker
    golang
    gitfast
EOBUNDLES
antigen theme pygmalion
antigen apply

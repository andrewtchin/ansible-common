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
alias product='cd ~/go/src/github.com/vmware/vic-product'

alias la='ls -A'
alias ll='ls -alhF'
alias l='ls -alhF'

# antigen
use_antigen=false
if [[ -a ~/.antigen/antigen.zsh ]]; then
  source ~/.antigen/antigen.zsh
  use_antigen=true
elif [[ -a /usr/share/zsh-antigen/antigen.zsh ]]; then
  source /usr/share/zsh-antigen/antigen.zsh
  use_antigen=true
fi

if [[ $use_antigen ]]; then
  antigen use oh-my-zsh

  antigen bundle zsh-users/zsh-syntax-highlighting
  antigen bundle zsh-users/zsh-history-substring-search
  antigen bundle zsh-users/zsh-completions
  antigen bundle docker
  antigen bundle golang
  antigen bundle gitfast

  antigen theme pygmalion
  antigen apply
fi

# docker version manager
if [[ -f ~/.dvm/dvm.sh ]]; then
  source ~/.dvm/dvm.sh
fi

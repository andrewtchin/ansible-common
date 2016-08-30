[[ -d "$HOME/go" ]] && export GOPATH=$HOME/go
[[ -n "$GOPATH" ]] && export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

alias vic='cd ~/go/src/github.com/vmware/vic'

alias la='ls -A'
alias ll='ls -alhF'
alias l='ls -alhF'

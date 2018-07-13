export PATH="$PATH:/usr/local/opt/gnupg/libexec/gpgbin"
export PATH="$PATH:./node_modules/.bin"
export PATH="$PATH:/usr/local/bin/elixir/bin"
export PATH="$PATH:$(go env GOPATH)/bin"
export PATH="/usr/local/sbin:$PATH"
export GOPATH=$(go env GOPATH)
export PATH="$PATH:/Library/Python/2.7/bin"
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}


export PS1="\[\e[36m\]\w\[\e[32m\]\$(parse_git_branch) -> $\[\e[39m\] "


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


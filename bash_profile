export PATH="$PATH:/usr/local/opt/gnupg/libexec/gpgbin"
export PATH="$PATH:./node_modules/.bin"
export PATH="$PATH:/usr/local/bin/elixir/bin"
export PATH="$PATH:$(go env GOPATH)/bin"
export PATH="$PATH:/user/local/sbin"
export GOPATH=$(go env GOPATH)
# echo /Applications/Postgres.app/Contents/Versions/latest/bin

# Git branch in prompt.
export CLICOLOR=1

export LSCOLORS=ExFxBxDxCxegedabagacad

# Git branch in prompt.

parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

export PS1="\[\e[34m\]\u @ \[\e[36m\]\w\[\e[32m\]$(parse_git_branch)\[\e[39m\] $ "

# set timestamp for path add this in PS1
# \[\e[0;35m\]\@\[\e[m\]

# Setting PATH for Python 3.5
# The original version is saved in .profile.pysave
# export PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"

# alias py='python3'
# alias pip='pip3'

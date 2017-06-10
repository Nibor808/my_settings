PATH="$PATH:/usr/local/opt/gnupg/libexec/gpgbin"
PATH="$PATH:./node_modules/.bin"
export PATH="$PATH:/path/to/elixir/bin"
export PATH="$PATH:$(go env GOPATH)/bin"
export GOPATH=$(go env GOPATH)

# Git branch in prompt.
export CLICOLOR=1

export LSCOLORS=ExFxBxDxCxegedabagacad

# Git branch in prompt.

parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

export PS1="\u @ \w\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# Setting PATH for Python 3.5
# The original version is saved in .profile.pysave
# export PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"

# alias py='python3'
# alias pip='pip3'

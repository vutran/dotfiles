# helper methods
include () {
    [[ -f "$1" ]] && source "$1"
}

# load antigen
source /usr/local/share/antigen/antigen.zsh
include $HOME/.antigenrc

# load plugins
plugins=(git ssh-agent zsh-syntax-highlighting tmux)

# incude local node_modules and vendor folder in path
export PATH="./node_modules/.bin:./vendor/bin:$PATH"

# include yarn path
export PATH="$HOME/.yarn/bin:$PATH"

# Preferred editor for local and remote sessions
export EDITOR='vim'

KEYTIMEOUT=1

# enable user's agignore file
alias ag='ag --path-to-ignore ~/.ignore'

# cdiff
alias sbs='cdiff -s -w 0'

# arc alias
alias aqs="arc queue-status"
alias ad="arc diff"
alias adp="arc diff --preview"
alias al="arc list"

# git alias
alias gdl="git diff --cached HEAD^"
alias gdls="git diff --cached HEAD^ --stat"
alias gundo="git reset --soft HEAD^"
alias glm="git log --author=vutran"
alias gbm="git branch -m"

alias tmux='tmux -2'

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Python virtual env wrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel

# goh config
include $HOME/.gohrc

# load dropbox config
include $HOME/.dropboxrc

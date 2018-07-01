autoload -U compinit promptinit

# helper methods
include () {
    [[ -f "$1" ]] && source "$1"
}

# load antigen
source /usr/local/share/antigen/antigen.zsh
include $HOME/.antigenrc

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
alias glp="git log --format=\"%Cgreen%h %Cblue %ae %Cred %aI %Creset %s\""

alias tmux='tmux -2'

# launch tmux if it exists
if [ "$TMUX" = "" ]; then tmux; fi

# load nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# prefer python and pip 3
alias python='python3'
alias pip='pip3'
# set our virtualenvwrapper to use python3
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

GPG_TTY=$(tty)
export GPG_TTY

# goh config
# - requires installation of vutran/goh
include $HOME/.gohrc

# load dropbox config
include $HOME/.dropboxrc

# make brew mysql-client available in the path
# - require installation of `mysql-client`
#  - brew install mysql-client
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

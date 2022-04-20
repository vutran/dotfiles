autoload -U compinit && compinit

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

### Helper methods
include () {
    [[ -f "$1" ]] && source "$1"
}

# default path to the Mac's Python bin path
include $HOME/Library/Python/2.7/bin/virtualenvwrapper.sh

# goh config
# - requires installation of vutran/goh
include $HOME/.gohrc

# Bootstrap Antigen
source /usr/local/share/antigen/antigen.zsh
include $HOME/.antigenrc

### Paths

# incude local node_modules and vendor folder in path
export PATH="./node_modules/.bin:./vendor/bin:$PATH"

# include yarn path
export PATH="$HOME/.yarn/bin:$PATH"

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel

# include path from brew
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# make brew mysql-client available in the path
# - require installation of `mysql-client`
#  - brew install mysql-client
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

# include Volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

### Default configs

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Set default shell
export SHELL='zsh'

KEYTIMEOUT=1

GPG_TTY=$(tty)
export GPG_TTY

# Tmux settings
ZSH_TMUX_AUTOSTART=true

plugins=(git tmux vscode)

### Alias

# Force tmux 256 colors
alias tmux='tmux -2'

# Enable user's agignore file
alias ag='ag --path-to-ignore ~/.ignore'

# Ydiff
alias sbs='ydiff -s -w 0'

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

# obsidian (https://obsidian.md/)
include $HOME/.obsidianrc

# load org-specific configs
include $HOME/.dropboxrc
include $HOME/.airtablerc

# Path to your oh-my-zsh installation.
export ZSH="/Users/vutran/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
if command -v pyenv 1>/dev/null 2>&1; then
 eval "$(pyenv init -)"
fi

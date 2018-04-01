# dotfiles

> Because everyone has one.


## Requirements

- stow

## Install

Install core


```bash
$ brew install the_silver_searcher tmux stow antigen
```

Install Zsh, Oh My Zsh

```
$ brew install zsh zsh-completions

$ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

Install Node

```
$ brew install node
```

Clone repository to `~/dotfiles`

```bash
$ git clone git@github.com:vutran/dotfiles.git ~/dotfiles
```

Switch to cloned directory and stow packages

```
$ cd ~/dotfiles

$ stow vim
$ stow zsh
$ stow git
```

## Vim Setup

Install Vundle:

```
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

### YouCompleteMe

Install completers:

```
$ ~/vim/bundle/YouCompleteMe/install. --gocode-completer --tern-completer
```

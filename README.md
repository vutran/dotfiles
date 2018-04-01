# dotfiles

> Because everyone has one.


## Requirements

- stow

## Install

Install dependencies


```bash
$ brew install stow zsh zsh-completions antigen the_silver_searcher node tmux
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

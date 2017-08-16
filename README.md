# dotfiles

> Because everyone has one.


## Requirements

- stow

## Install

Install dependencies


```bash
$ brew install stow zsh zsh-completions antigen
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

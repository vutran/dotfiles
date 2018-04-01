# dotfiles

> Because everyone has one.


## Requirements

- Homebrew
- stow

## Install

Install [Homebrew](https://brew.sh)

```
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## Install GNU Stow

```
$ brew install stow
```

## Other Tooling


```bash
$ brew install the_silver_searcher tmux
```

Install Zsh with completions, Antigen, and Oh My Zsh

```
$ brew install zsh zsh-completions antigen

$ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# edit /etc/shells and append /usr/local/bin/zsh (since it was installed via brew)
# link: https://stackoverflow.com/questions/31034870/making-zsh-default-shell-in-macosx#comment77696410_44547726
```

Install Node

```
$ brew install node yarn
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
# etc..
```

## Vim Setup

Install Vundle:

```
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

### YouCompleteMe

Install YCM completers:

```
$ ~/vim/bundle/YouCompleteMe/install. --gocode-completer --tern-completer
```

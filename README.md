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

## Other Packages

- iTerm - One Dark - [Download](https://github.com/joshdick/onedark.vim)
- Slate Window Management - [Download](https://github.com/jigish/slate)
- Powerline Fonts - [Download](https://github.com/powerline/fonts) - Set to `Hack`
- Tmux Plugin Manager - [Download](https://github.com/tmux-plugins/tpm)

## Install GNU Stow

```
$ brew install stow
```

## Other Tooling


```bash
$ brew install the_silver_searcher tmux reattach-to-user-namespace ydiff
```

Install Zsh with completions, Antigen, and Oh My Zsh

```
$ brew install zsh zsh-completions antigen

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

Install VIM:

```
$ brew install vim --with-lua --with-override-system-vi
```


Install Vundle:

```
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

### YouCompleteMe

Install YCM completers:

```
$ ~/vim/bundle/YouCompleteMe/install. --gocode-completer --tern-completer
```
## Tmux Setup

Follow instructions to install via `tpm` [here](https://github.com/tmux-plugins/tpm#installing-plugins
)

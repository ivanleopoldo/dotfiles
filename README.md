# Personal Dotfiles for MacOS

![alt text](https://github.com/ivanleopoldo/dotfiles/blob/macos/.assets/thumbnail.png?raw=true "Thumbnail")

## Pre-requisites
1. [tmux](tmux.github.io)
2. [kitty](https://sw.kovidgoyal.net/kitty/)
3. [neovim](https://neovim.io)
4. [ohmyzsh](https://ohmyz.sh)

## Installation

Using [git](https://git-scm.com):
```bash
git clone https://github.com/ivanleopoldo/dotfiles.git ~/.config/
```

Using [gh](https://cli.github.com):
```bash
gh repo clone ivanleopoldo/dotfiles ~/.config/
```

## Usage

Just clone the repository and kitty, neovim, tmux will work right away.

To use my ohmyzsh configuration, delete contents of `~/.zshrc` and replace with:

```bash
source ~/.config/zsh/.zshrc
```

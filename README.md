![alt text](https://github.com/ivanleopoldo/dotfiles/blob/macos/.assets/thumbnail.png?raw=true "Thumbnail")
![alt text](https://github.com/ivanleopoldo/dotfiles/blob/macos/.assets/image.png?raw=true "Image")

A collection of my personal configuration files for MacOS heavily using the [Oxocarbon](https://github.com/nyoom-engineering/oxocarbon.nvim) theme by [Nyoom Engineering](https://github.com/nyoom-engineering).

## Requirements
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

Add `--resursive` to clone the submodules ([powerlevel10k](https://github.com/romkatv/powerlevel10k]))

## Usage
> Back up your configuration files before following!

Just clone the repository and kitty, neovim, tmux will work right away.

To use my ohmyzsh configuration, delete contents of `~/.zshrc` and replace with:

```bash
source ~/.config/zsh/.zshrc
```

## TODO
- [ ] Add installation script preferably CLI tool
- [ ] Make configuration organized
- [ ] Add more documentation
- [ ] Create parent repo
  - [ ] Make separate repos for each configuration

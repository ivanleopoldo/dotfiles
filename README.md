![alt text](https://github.com/ivanleopoldo/dotfiles/blob/macos/.assets/thumbnail.png?raw=true "Thumbnail")

A collection of my personal terminal configuration files for MacOS heavily using the [Oxocarbon](https://github.com/nyoom-engineering/oxocarbon.nvim) theme by [Nyoom Engineering](https://github.com/nyoom-engineering).

## Requirements
1. [tmux](tmux.github.io)
2. [kitty](https://sw.kovidgoyal.net/kitty/)
3. [neovim](https://neovim.io)
4. [ohmyzsh](https://ohmyz.sh)

## Installation

#### All configurations

Paste this into your terminal:

```bash
git clone https://github.com/ivanleopoldo/dotfiles.git ~/.config/
```

Add `--resursive` to clone the submodules ([powerlevel10k](https://github.com/romkatv/powerlevel10k]), zsh theme)

To use my ohmyzsh configuration, delete contents of `~/.zshrc` and replace with:

```bash
source ~/.config/zsh/.zshrc
```

#### Specific configurations

If you want to only clone specific configuration, you can do so by:

```bash
git clone --no-checkout https://github.com/ivanleopoldo/dotfiles.git ~/.config/
cd ~/.config
git sparse-checkout set --cone
git checkout macos
git sparse-checkout set <folders> # kitty nvim
```
If zsh configuration is included, clone [powerlevel10k](https://github.com/romkatv/powerlevel10k) to `zsh/themes` folder.

## Gallery

![alt text](https://github.com/ivanleopoldo/dotfiles/blob/macos/.assets/image.png?raw=true "Image")

## TODO
- [ ] Add installation script preferably a CLI tool
- [ ] Make configuration organized
- [ ] Add more documentation
- [ ] Add more screenshots in the gallery
- [ ] Add parent repo
  - [ ] Children repo for each configuration

# Config Files

A repository to track [neovim](https://github.com/neovim/neovim), powershell, and [scoop](https://scoop.sh/) config files.

### Packages

- [scoop](https://scoop.sh)
- [neovim](https://github.com/neovim/neovim)
  - [AstroNvim](https://github.com/AstroNvim/AstroNvim)
  - [astrocommunity](https://github.com/AstroNvim/astrocommunity)
- [git](https://git-scm.com/)

<hr>

### Installation

__Powershell__:

Add the following code to <code>$PROFILE</code>
<br>

```powershell
. ~\.config\powershell\config.ps1
```

__Scoop__:
<br>
Install scoop then navigate to _scoop/_
<br>
Import packages using ```scoop import scoop.json```

__AstroNvim__:
<br>
Clone [AstroNvim](https://github.com/AstroNvim/AstroNvim) in _~/AppData/Local_ using
<br>
```git clone https://github.com/AstroNvim/AstroNvim nvim```
<br>
or
<br>
```gh repo clone AstroNvim\AstroNvim -- nvim```
<br>
Create a symlink with destination as _~/AppData/Local/nvim/lua/user_ and source as _~/.config/nvim_

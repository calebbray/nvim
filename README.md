## Getting Started

Make sure that Neovim is installed.

If you're Caleb, you're probably on a Mac. Make your life easy and install through Homebrew stupid.

```bash
brew install neovim
```

Clone this repository into your `.config` directory for `nvim`

```bash
git clone git@github.com:calebbray/nvim.git ~/.config/nvim
```

Install a plugin manager for vim. Packer works great.

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

```

After this, you should be able to start nvim and run `:PackerSync` to install all the plugins

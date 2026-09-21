# Terminal Configuration

1. All the alias are located in ~/Sripts/alias.txt after running the install script.
2. Supports mouse functions. i.e. Mouse clicks can be used to switch splits, windows, sessions etc. Scrolling with mouse wheel activates copy mode and you can select using mouse cursor.

Note - Make sure to add the zsh-config contents to the bottom of your .zshrc file for loading all the custom configs.

## Install and Setup Alacritty with Themes and other Essentials

I am using ayu_dark for my setup

```
sudo apt install zoxide fzf fd-find eza bat -y
pip install tldr && tldr --update

sudo apt install alacritty

# Installing Alacritty themes
mkdir -p ~/.config/alacritty/themes
git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes

# Alacritty config file is located at the following path, although the install script will fill out my config to the file
~/.config/alacritty/alacritty.toml
```

```
git clone https://github.com/vxsparsh/tmux_config
cd tmux_config
./install.sh
```

## Setup Vim

Start vim and enter the following in command mode to install the required plugins
```
:PlugInstall
```

## Key Bindings and Help

The key binding for tmux is set to "A" in this config file.

You can get help by typing - vim-help or tmux-help

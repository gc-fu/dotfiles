# Dotfile config

## Vim
For vim, the configuration is set for neovim version above v0.5.1<br>
**Vim-plug** needs to be installed first<br>
**ref**:https://github.com/junegunn/vim-plug#neovim <br>
**Nodejs** is required for plugin coc-nvim, version >= v12.20

### EditorConfig
A famous plugin for vim, mapped to **~/.editorconfig**<br>
For local project config, just put **editorconfig** in your own project folder


## Tmux
All the corresponding tmux config is in tmux.conf<br>
Mapped to **~/.tmux.conf**



## Git
Personal settings should go to **~/.gitconfig.local**<br>
Global settings in gitconfig, should be mapped to **~/.gitconfig**



## zsh
Install zsh and oh-my-zsh first manually.

change the default shell to zsh by `chsh` command



## Install

For the first time install:

Run the following command:
>./install

Otherwise, run the following command:
>./install --except shell
# wang hao's Vimrc

Mainly forked the major basic configuration of [amix](https://github.com/amix/vimrc). Used for
**Python Developing**, **Ruby Assistance** is also in plan. 

## Installation

Local Install

```shell
$ git clone https://github.com/wanghao923/vimrc.d.git ~/vimrc.d

$ cd ~/vimrc.d
$ ./install.sh
```
## Shortcuts

`<leader>` means `<mapleader>` in vim, in this situation it is `,`. All shortcuts below only works in **Normal Mode**.

- `<leader>d` means **Toggle Nerd Tree**
- `<leader>t` means `:CtrlP<space>`
    - Be careful that there is no `<cr>` but a space behind command. We can add another directory argument for this command or just type `<cr>` for vim launch directory.
- `<leader>e` means **Open [basic_vimrc.vim](basic_vimrc.vim)**, this is for normal settings. 
- `<leader>ee` means **Open [installed_plugins.vim](installed_plugins.vim)**, this is for plugin settings
- EasyMotion actions used the default keymap settings, so if u want to activate a EasyMotion motion, u need to use `<leader><leader> as map leader

## Plugin Installation

I use [Vundle](https://github.com/gmarik/vundle) for plugin management, but there is a problem that vundle uses `g:bundles` to record installed bundles, I don't want to use it because it's not clear for list. So I use another way for vundle. 

I use *[installed_plugins.vim](installed_plugins.vim)* for installing plugins, just add plugin into this file. 

Please do obey the rule I used below for plugin installation. It might not be simple, but it's clear.

```viml
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Please add plugin name here
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'plugin/repo' " we can see the usage from vundle document

" Please add plugin configuration here
" Let's end by a blank line
```

After adding contents, just type `:BundleInstall` in vim or `vim +BundleInstall +qall` in shell for plugin installation.

## Installed Plugins

- [CtrlP](https://github.com/kien/ctrlp) for amazing file jump and function jump
- [Vim-Airline](https://github.com/bling/vim-airline) for fancy vim status bar
- [Fugitive](https://github.com/tpope/vim-fugitive) for git assistance
- [EasyMotion](https://github.com/Lokaltog/vim-easymotion) for amazing in-file jump
- [Jedi](https://github.com/davidhalter/jedi-vim) for python completion
- [Tmuxline](https://github.com/edkolev/tmuxline.vim) for tmux poewline generation
- [NERDTree](https://github.com/scrooloose/nerdtree) as file explorer
- [Salt-Vim](https://github.com/saltstack/salt-vim) for salt formula support
- [Tagbar](https://github.com/majutsushi/tagbar) for tag display

# Muttis Vim Config

Amazing! There is already a full nvim config in this repo but sometimes you just
need that unwinding zen mode that only the classic vim can provide.

This is also ideal for more limited/restricted machines (think workplace laptops), where
using neovim might bring some dirty looks.

Happy Vimming! :alien: :deciduous_tree: :boom:

## Installation

Copy this directory to either:
- ~/.config/
- ~/ AND run `mv vim/ .vim/`

The setup automatically handles installing vim-plug using an autocmd and also
installs all configured plugins.

### Prerequisites
- vim obviously, preferably >9.2

For fzf.vim:
- fzf
- bat for syntax highlight
- ripgrep (rg)

:clipboard: Also note that by default, I'm using vim-wayland-clipboard but your machine
might require something else. :clipboard:

## Add more plugins

Just follow the convention in vimrc and paste the GitHub shortlinks under `call plug#begin()`.
Ideally also write a comment describing what the plugin does.

## Extending the config

Go for it! Write some comments so I can understand what's going on.

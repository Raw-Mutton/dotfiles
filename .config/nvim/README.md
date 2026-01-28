# My neovim config

Originally forked from kickstart.nvim with some medium to light modificaitons.
Should still work out of the box!

Things are looking good. Some things I should add/modify are:

Plugins:
- [ ] Harpoon
- [x] Switch mini statusline to lualine
- [ ] Other interesting non-bloat plugins?

Other stuff:
- [ ] Remove some unnecessary parts?
  - Issue templates etc.
- [x] Organize init.lua into separate modules

### Should this be detached from the kickstart fork?

Thought about it but maybe not? There has not been a push in kickstart.nvim in 7 months (as of Dec 19) but maybe some day.
Plus since the project and all plugins are so young and volatile, it is beneficial to be able to benefit from
other people's discoveries and bug fixes.

## Enabled plugins

Using lazy.nvim

| Plugin           | Purpose                         |
| ---------------- | ------------------------------- |
| alpha            | Greeting screen                 |
| conform          | Autoformatting                  |
| autopairs        | Bracket etc. pairing            |
| autotag          | HTML tag pairing                |
| blink-cmp        | Code completion & snippets      |
| gitsigns         | Simple git helpers              |
| guess-indent     | Better autoindenting            |
| indent-blankline | Indentation guides              |
| lazydev          | LuaLS setup                     |
| lspconfig        | LSP stuff                       |
| lualine          | Nice status bar                 |
| mini             | Just using ai, surround, icons  |
| telescope        | Fuzzy finder OOOF it's so clean |
| todo-comments    | Custom comments                 |
| treesitter       | Syntax trees                    |
| which-key        | Help with keymaps               |

Possibly more to come but trying to keep it clean and relatively simple.

There are more plugins defined but they are not in use since I'm not sure if
I need them yet.

## Introduction (The rest is from kickstart, slightly shortened...)

A starting point for Neovim that is:

* Small
* Completely Documented

## Installation

### Install Neovim

Kickstart.nvim targets *only* the latest
['stable'](https://github.com/neovim/neovim/releases/tag/stable) and latest
['nightly'](https://github.com/neovim/neovim/releases/tag/nightly) of Neovim.
If you are experiencing issues, please make sure you have the latest versions.

### Install External Dependencies

External Requirements:
- Basic utils: `git`, `make`, `unzip`, C Compiler (`gcc`)
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation),
  [fd-find](https://github.com/sharkdp/fd#installation)
- Clipboard tool (xclip/xsel/win32yank or other depending on the platform)
- A [Nerd Font](https://www.nerdfonts.com/): optional, provides various icons
  - if you have it set `vim.g.have_nerd_font` in `init.lua` to true
- Emoji fonts (Ubuntu only, and only if you want emoji!) `sudo apt install fonts-noto-color-emoji`
- Language Setup:
  - If you want to write Typescript, you need `npm`
  - If you want to write Golang, you will need `go`
  - etc.

> [!NOTE]
> See [Install Recipes](#Install-Recipes) for additional Windows and Linux specific notes
> and quick install snippets

### Install Kickstart

> [!NOTE]
> [Backup](#FAQ) your previous configuration (if any exists)

Neovim's configurations are located under the following paths, depending on your OS:

| OS | PATH |
| :- | :--- |
| Linux, MacOS | `$XDG_CONFIG_HOME/nvim`, `~/.config/nvim` |

#### Recommended Step

You likely want to keep tracking `lazy-lock.json`  - it's ignored in the kickstart repo to make maintenance easier, but it's
[recommended to track it in version control](https://lazy.folke.io/usage/lockfile).


### Post Installation

Start Neovim

```sh
nvim
```

That's it! Lazy will install all the plugins you have. Use `:Lazy` to view
the current plugin status. Hit `q` to close the window.

#### Read The Friendly Documentation

Read through the `init.lua` file in your configuration folder for more
information about extending and exploring Neovim. That also includes
examples of adding popularly requested plugins.

> [!NOTE]
> For more information about a particular plugin check its repository's documentation.


### Getting Started

[The Only Video You Need to Get Started with Neovim](https://youtu.be/m8C0Cq9Uv9o)

### FAQ

* What should I do if I already have a pre-existing Neovim configuration?
  * You should back it up and then delete all associated files.
  * This includes your existing init.lua and the Neovim files in `~/.local`
    which can be deleted with `rm -rf ~/.local/share/nvim/`
* Can I keep my existing configuration in parallel to kickstart?
  * Yes! You can use [NVIM_APPNAME](https://neovim.io/doc/user/starting.html#%24NVIM_APPNAME)`=nvim-NAME`
    to maintain multiple configurations. For example, you can install the kickstart
    configuration in `~/.config/nvim-kickstart` and create an alias:
    ```
    alias nvim-kickstart='NVIM_APPNAME="nvim-kickstart" nvim'
    ```
    When you run Neovim using `nvim-kickstart` alias it will use the alternative
    config directory and the matching local directory
    `~/.local/share/nvim-kickstart`. You can apply this approach to any Neovim
    distribution that you would like to try out.
* What if I want to "uninstall" this configuration:
  * See [lazy.nvim uninstall](https://lazy.folke.io/usage#-uninstalling) information

### Install Recipes

Below you can find OS specific install instructions for Neovim and dependencies.

After installing all the dependencies continue with the [Install Kickstart](#Install-Kickstart) step.

#### Linux Install

<details><summary>Arch Install Steps</summary>

```
sudo pacman -S --noconfirm --needed gcc make git ripgrep fd unzip neovim
```
</details>


# My Arch Dotfiles

Did this a few years back for my neovim config but I absolutely HATED the stow experience.
So we are back, better and bolder than ever. This time with a simple shell script to copy some files to the git repo. Why overcomplicate things?

| **Module**          | **Name**  |
|---------------------|-----------|
| Window manager      | Sway      |
| Terminal            | foot      |
| Display manager     | ly        |
| Text editor         | nvim (based on Kickstart.nvim)      |
| Application launcer | rofi      |
| File manager        | yazi      |
| Status bar          | waybar    |
| Notification daemon | swaync    |
| Rice Flexing        | fastfetch |

### Wallpapers

There are some handy dandy wallpaper utilities in the config.
If you need a good place to get pristine quality wallpapers legitimately for free, might I suggest [Artvee](https://artvee.com), and specifically their Landscape category.
This method is also a foolproof way to avoid those stupid ass AI generated lofi anime wallpapers.

## Installation

Ah, no need to worry about creating working symlinks. Man I hate symlinks. "Hey dude yeah u just need to replicate the file structure inside each folder, no big deal!". Just stop it.

Just clone the repo and copy stuff from .config to your config
```
git clone https://github.com/Raw-Mutton/dotfiles.git
cp -ri dotfiles/.config/* ~/.config
```

Maybe a some point there will be a more sophisticated install script?
> Actually no, this is so simple no one should need an install script.

## ToDo

These lists are dangerous... I won't promise anything!

- [ ] Modify copy script to have option for not committing anything
- [ ] Modularize nvim config BRAH
- [ ] Add some tool-based commentary?

## Screenshots

Coming Soon, I hope. If there is anything to show off...

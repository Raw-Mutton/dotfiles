# foot terminal config

This config is quite barebones, as you can see from the `foot.ini` file.
Most of the config is just the defualts, except maybe the font and colors.

I (like you) should really look more into the config possibilities here.


## Managing themes

It's pretty straightforward. Most popular colorschemes have ports for foot.
Just create a file to `./themes` and populate it with the config.

Then, change the line `include=~/.config/foot/themes/<desired-theme>` appropriately.
Notice that the path apparently needs to be absolute, otherwise it gives an error.

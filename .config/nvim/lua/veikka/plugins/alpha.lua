return {
  'goolord/alpha-nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'
    -- local startify = require("alpha.themes.startify")
    -- available: devicons, mini, default is mini
    -- if provider not loaded and enabled is true, it will try to use another provider
    -- dashboard.file_icons.provider = "devicons"
    alpha.setup(dashboard.config)

    -- Header
    dashboard.section.header.val = {
      '                                                                   ',
      ' ███▄▄▄▄      ▄████████  ▄██████▄   ▄█    █▄   ▄█    ▄▄▄▄███▄▄▄▄   ',
      ' ███▀▀▀██▄   ███    ███ ███    ███ ███    ███ ███  ▄██▀▀▀███▀▀▀██▄ ',
      ' ███   ███   ███    █▀  ███    ███ ███    ███ ███▌ ███   ███   ███ ',
      ' ███   ███  ▄███▄▄▄     ███    ███ ███    ███ ███▌ ███   ███   ███ ',
      ' ███   ███ ▀▀███▀▀▀     ███    ███ ███    ███ ███▌ ███   ███   ███ ',
      ' ███   ███   ███    █▄  ███    ███ ███    ███ ███  ███   ███   ███ ',
      ' ███   ███   ███    ███ ███    ███ ███    ███ ███  ███   ███   ███ ',
      '  ▀█   █▀    ██████████  ▀██████▀   ▀██████▀  █▀    ▀█   ███   █▀  ',
      '                                                                   ',
    }
    dashboard.section.buttons.val = {
      dashboard.button('e', 'Open File Explorer', '<cmd>Explore<CR>'),
      dashboard.button('SPC sf', 'Find File', '<cmd>Telescope find_files<CR>'),
      dashboard.button('SPC sg', 'Find Word', '<cmd>Telescope live_grep<CR>'),
      dashboard.button('q', 'Quit NVIM', '<cmd>qa<CR>'),
    }
    alpha.setup(dashboard.opts)
  end,
}

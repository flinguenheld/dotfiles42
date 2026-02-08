-- Folder : /home/

-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 100
config.initial_rows = 50

-- or, changing the font size and color scheme.
config.font_size = 11
-- config.font = wezterm.font 'Hack Nerd Font'
config.color_scheme = 'Gruvbox Dark (Gogh)'

--  ---------------------------------------------------------------------------
--  ---------------------------------------------------------------- WINDOW ---
config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "RESIZE"
config.window_padding = {
  left   = 0,
  right  = 0,
  top    = 0,
  bottom = 0,
}

--  ---------------------------------------------------------------------------
--  -------------------------------------------------------------- KEYBINDS ---
-- timeout_milliseconds defaults to 1000 and can be omitted
config.leader = { key = 't', mods = 'CTRL', timeout_milliseconds = 2000 }
config.keys = {
  {
    key = '|',
    mods = 'LEADER|SHIFT',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = '-',
    mods = 'LEADER',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'q',
    mods = 'LEADER|CTRL',
    action = wezterm.action.CloseCurrentPane { confirm = false },
  },
}

-- Finally, return the configuration to wezterm:
return config

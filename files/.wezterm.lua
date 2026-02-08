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
config.color_scheme = 'One Dark (Gogh)'

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
config.leader = { key = 'w', mods = 'SUPER', timeout_milliseconds = 3000 }
config.keys = {

  {
    key = 'Return',
    mods = 'SHIFT|CTRL',
    action = wezterm.action.SpawnWindow,
  },
  {
    key = 'r',
    mods = 'LEADER|CTRL',
    action = wezterm.action.ReloadConfiguration,
  },
--  ----------------------------------------------
--  ------------------------------------ PANES ---
  {
    key = 'v',
    mods = 'LEADER',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'h',
    mods = 'LEADER',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'r',
    mods = 'LEADER',
    action = wezterm.action.RotatePanes 'Clockwise',
  },
  {
    key = 'q',
    mods = 'LEADER|CTRL',
    action = wezterm.action.CloseCurrentPane { confirm = false },
  },
  {
    key = 'f',
    mods = 'LEADER',
    action = wezterm.action.TogglePaneZoomState,
  },
  {
    key = 'w',
    mods = 'LEADER',
    action = wezterm.action.PaneSelect { alphabet = 'asenrtiu', },
  },

  
  {
    key = 'LeftArrow',
    mods = 'SUPER|SHIFT',
    action = wezterm.action.ActivatePaneDirection 'Left',
  },
  {
    key = 'RightArrow',
    mods = 'SUPER|SHIFT',
    action = wezterm.action.ActivatePaneDirection 'Right',
  },
  {
    key = 'UpArrow',
    mods = 'SUPER|SHIFT',
    action = wezterm.action.ActivatePaneDirection 'Up',
  },
  {
    key = 'DownArrow',
    mods = 'SUPER|SHIFT',
    action = wezterm.action.ActivatePaneDirection 'Down',
  },
--  ----------------------------------------------
--  -------------------------------- FONT SIZE ---
  {
    key = '=',
    mods = 'LEADER',
    action = wezterm.action.ResetFontSize
  },
  {
    key = '+',
    mods = 'LEADER|SHIFT',
    action = wezterm.action.IncreaseFontSize
  },
  {
    key = '-',
    mods = 'LEADER',
    action = wezterm.action.DecreaseFontSize
  },
--  ----------------------------------------------
--  ------------------------------------- TABS ---
  {
    key = 't',
    mods = 'LEADER',
    action = wezterm.action.SpawnTab 'CurrentPaneDomain',
  },
  {
    key = 't',
    mods = 'LEADER|CTRL',
    action = wezterm.action.CloseCurrentTab { confirm = false },
  },
}

-- Finally, return the configuration to wezterm:
return config

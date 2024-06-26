-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.font = wezterm.font('CodeNewRoman Nerd Font Mono')
config.font_size = 13.0

config.default_prog = { '/opt/homebrew/bin/tmux', 'new',  '-A', '-s', 'init' }

return config

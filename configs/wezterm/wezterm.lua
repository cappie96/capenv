local wezterm = require "wezterm"
local config = wezterm.config_builder()

config.enable_wayland = false

-- ColorScheme
config.color_scheme = "nekonight"

-- Font
config.font_size = 10
-- wezterm ls-fonts --list-system
config.font = wezterm.font "RobotoMono Nerd Font Mono"

return config

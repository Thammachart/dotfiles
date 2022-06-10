local wezterm = require 'wezterm';

return {
  enable_wayland = true,
  font = wezterm.font("Cascadia Code"),
  keys = {
    -- Clears the scrollback and viewport leaving the prompt line the new first line.
    {key="K", mods="CTRL|SHIFT", action=wezterm.action{ClearScrollback="ScrollbackAndViewport"}},
  },
  enable_scroll_bar = true,
}
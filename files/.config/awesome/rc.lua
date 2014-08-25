-- Standard awesome library
require("awful")
require("awful.autofocus")
require("awful.rules")

-- Theme handling library
require("beautiful")

-- Standard Settings
terminal = "xterm"
editor = os.getenv("EDITOR") or "emacsclient"
editor_cmd = terminal .. " -e " .. editor

-- Modkey
modkey = "Alt"

awful.key({ modkey }, "r", function ()
  awful.util.spawn(
    "dmenu_run -i -p 'Run command:' -nb '" .. 
    beautiful.bg_normal .. "' -nf '" .. beautiful.fg_normal .. 
    "' -sb '" .. beautiful.bg_focus .. 
    "' -sf '" .. beautiful.fg_focus .. "'"
  )
end)

-- Define a tag table which hold all screen tags.
tags = {}
for s = 1, screen.count() do
    -- Each screen has its own tag table.
    tags[s] = awful.tag({ 1, 2, 3, 4, 5, 6, 7, 8, 9 }, s, layouts[1])
end
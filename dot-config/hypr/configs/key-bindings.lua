---------------------
---- KEYBINDINGS ----
---------------------

-- See https://wiki.hyprland.org/Configuring/Keywords/
local mainMod = "SUPER"

-- see https://wiki.hyprland.org/Configuring/Binds/ for more
hl.bind(mainMod.. " + Q", hl.dsp.exec_cmd(Terminal))
hl.bind(mainMod.. " + C", hl.dsp.window.close())
hl.bind(mainMod .. " + CTRL + SHIFT + ALT + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
hl.bind(mainMod.. " + E", hl.dsp.exec_cmd(FileManager))
hl.bind(mainMod.. " + B", hl.dsp.exec_cmd(Browser.. " -P pers"))
hl.bind(mainMod.. " + ALT + B", hl.dsp.exec_cmd(Browser.. " -P work"))
hl.bind(mainMod.. " + F", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod.. " + R", hl.dsp.exec_cmd("pkill ^".. Menu.. "$ || ".. Menu))
hl.bind(mainMod.. " + SHIFT + P", hl.dsp.window.pseudo()) -- dwindle
hl.bind(mainMod.. " + T", hl.dsp.layout("togglesplit")) -- dwindle
hl.bind(mainMod.. " + V", hl.dsp.exec_cmd("pkill ".. Menu.. " || cliphist list | ".. Menu.. " -d -p Clipboard | cliphist decode | wl-copy"))
hl.bind(mainMod.. " + SHIFT + Q", hl.dsp.exec_cmd("hyprlock"))
hl.bind(mainMod.. " + P", hl.dsp.exec_cmd("hyprpicker | wl-copy"))
hl.bind(mainMod.. " + RETURN", hl.dsp.exec_cmd(Scripts.. "/sshot"))
hl.bind(mainMod.. " + CTRL + Q", hl.dsp.exec_cmd(Scripts.. "/toggle-transparency"))

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

-- Move focus with mainMod + vim motions
hl.bind(mainMod .. " + h",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + l", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + k",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + j",  hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Move through existing workspaces with mainMod + CTRL + vim motions
hl.bind(mainMod .. " + CTRL + l", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + CTRL + h",   hl.dsp.focus({ workspace = "e-1" }))

-- Move active window to an existing workspaces with mainMod CTRL + SHIFT + vim motions
hl.bind(mainMod .. " + SHIFT + h",     hl.dsp.window.move({ workspace = "e-1" }))
hl.bind(mainMod .. " + SHIFT + l",     hl.dsp.window.move({ workspace = "e+1" }))

-- Example special workspace (scratchpad)
hl.bind(mainMod .. " + S",         hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

-- Function keys for volume and LCD brightness
hl.bind(mainMod .. " + F4", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind(mainMod .. " + F3", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind(mainMod .. " + F2", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind(mainMod .. " + F7", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SOURCE@ 5%+"), { locked = true, repeating = true })
hl.bind(mainMod .. " + F6", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SOURCE@ 5%-"),      { locked = true, repeating = true })
hl.bind(mainMod .. " + F5", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind(mainMod .. " + F10", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind(mainMod .. " + F9", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

hl.bind(mainMod .. " + Space",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })


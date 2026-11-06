-- #################
-- ### AUTOSTART ###
-- #################
--
-- # Autostart necessary processes (like notifications daemons, status bars, etc.)
-- # Or execute your favorite apps at launch like this:

hl.on("hyprland.start", function()
    hl.exec_cmd("swaync")
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("waybar") -- watch-waybar can also be used here

    hl.exec_cmd("wl-paste --type text --watch cliphist store") -- Stores only text data
    hl.exec_cmd("wl-paste --type image --watch cliphist store") -- Stores only image data
    -- not needed since bios settings update
    hl.exec_cmd(Scripts .. "/battery-monitor --min=64 --max=67 -q")
    hl.exec_cmd(Scripts .. "/change-wallpapers anime")

    hl.exec_cmd("systemctl --user start hyprpolkitagent")
end)

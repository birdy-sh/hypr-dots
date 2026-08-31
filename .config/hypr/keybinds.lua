---------------------
---- KEYBINDINGS ----
---------------------
-- =============================================================================
-- Modifier Definitions
-- =============================================================================
local mainMod  = "SUPER"
local mainMod2 = "ALT"

-- Default applications (Make sure these variables are defined in your script)
local terminal    = "kitty"
local fileManager = "dolphin"
local menu        = "rofi -show drun"

-- =============================================================================
-- Core & Window Dispatchers
-- =============================================================================
hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + Z",      hl.dsp.window.close())       -- killactive
hl.bind(mainMod .. " + Q",      hl.dsp.window.pin())        -- pin window
hl.bind(mainMod .. " + E",      hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + F",      hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + R",      hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + P",      hl.dsp.window.pseudo())     -- pseudo split
hl.bind(mainMod .. " + SHIFT + X", hl.dsp.window.fullscreen()) -- toggle fullscreen

-- Session / System Controls
hl.bind(mainMod .. " + " .. mainMod2 .. " + C", hl.dsp.exit()) -- Safe exit
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind(mainMod2 .. " + Z", hl.dsp.dpms({ action = "on" }))
hl.bind(mainMod2 .. " + X", hl.dsp.dpms({ action = "off" }))

-- =============================================================================
-- Application Binds (ALT / mainMod2)
-- =============================================================================
hl.bind(mainMod2 .. " + L", hl.dsp.exec_cmd("librewolf"))
hl.bind(mainMod2 .. " + M", hl.dsp.exec_cmd("flatpak run io.missioncenter.MissionCenter"))
hl.bind(mainMod2 .. " + F", hl.dsp.exec_cmd("firefox"))
hl.bind(mainMod2 .. " + H", hl.dsp.exec_cmd("haruna"))
hl.bind(mainMod2 .. " + T", hl.dsp.exec_cmd("thunar"))
hl.bind(mainMod2 .. " + S", hl.dsp.exec_cmd("signal-desktop"))
hl.bind(mainMod2 .. " + B", hl.dsp.exec_cmd("blueman-manager"))
--hl.bind(mainMod2 .. " + P", hl.dsp.exec_cmd("pavucontrol"))
hl.bind(mainMod2 .. " + N", hl.dsp.exec_cmd("flatpak run com.notesnook.Notesnook"))
hl.bind(mainMod .. " + N",  hl.dsp.exec_cmd("zettlr")) -- mapped to SUPER+N

-- Rofi & Window Switching
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd("rofi -show window"))

-- =============================================================================
-- Custom Scripts & Utilities
-- =============================================================================
--hl.bind(mainMod .. " + D",       hl.dsp.exec_cmd(os.getenv("HOME") .. "/.local/share/rofi/themes/Rofi-switcher.sh"))
--hl.bind(mainMod2 .. " + C",      hl.dsp.exec_cmd(os.getenv("HOME") .. "/Scripts/Audio-sink.sh"))
hl.bind(mainMod .. " + " .. mainMod2 .. " + W", hl.dsp.exec_cmd(os.getenv("HOME") .. "/Scripts/walls-3.sh"))
hl.bind(mainMod2 .. " + W",      hl.dsp.exec_cmd("awww img \"$(find ~/Pictures/Wallpapers -type f | shuf -n 1)\" --transition-type random --transition-duration 30"))
hl.bind(mainMod .. " + " .. mainMod2 .. " + Q", hl.dsp.exec_cmd("pkill waybar && waybar &"))
hl.bind(mainMod2 .. " + V",      hl.dsp.exec_cmd("pkill waybar && waybar &"))
hl.bind(mainMod .. " + V",       hl.dsp.exec_cmd("kitty --class clipse -e clipse"))

-- Bluetooth quick actions
hl.bind(mainMod2 .. " + O", hl.dsp.exec_cmd("bluetoothctl connect 78:15:2D:62:F7:63"))
hl.bind(mainMod .. " + O",  hl.dsp.exec_cmd("bluetoothctl disconnect 78:15:2D:62:F7:63"))



-- =============================================================================
-- Window Focus & Layout Navigation
-- =============================================================================
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))
hl.bind(mainMod .. " + J",     hl.dsp.layout("togglesplit"))

--Moving Windows
hl.bind(mainMod .. " + Q", hl.dsp.layout("swapsplit"), { description = "Swapsplit" })
hl.bind(mainMod .. " + ALT + left", hl.dsp.window.swap({ direction = "l" }), { description = "Swap tiled window left" })
hl.bind(mainMod .. " + ALT + right", hl.dsp.window.swap({ direction = "r" }), { description = "Swap tiled window right" })
hl.bind(mainMod .. " + ALT + up", hl.dsp.window.swap({ direction = "u" }), { description = "Swap tiled window up" })
hl.bind(mainMod .. " + ALT + down", hl.dsp.window.swap({ direction = "d" }), { description = "Swap tiled window down" })


--Resizing Windows
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.resize({ x = 100, y = 0, relative = true }), { repeating = true }, { description = "Increase window width with keyboard" })
hl.bind(mainMod .. " + SHIFT + left", hl.dsp.window.resize({ x = -100, y = 0, relative = true }), { repeating = true }, { description = "Reduce window width with keyboard" })
hl.bind(mainMod .. " + SHIFT + down", hl.dsp.window.resize({ x = 0, y = 100, relative = true }), { repeating = true }, { description = "Increase window height with keyboard" })
hl.bind(mainMod .. " + SHIFT + up", hl.dsp.window.resize({ x = 0, y = -100, relative = true }), { repeating = true }, { description = "Reduce window height with keyboard" })

--Cycle Between Windows
hl.bind("SUPER + Tab", function() hl.dispatch(hl.dsp.window.cycle_next()) end)
-- =============================================================================
-- Workspace Management Loops
-- =============================================================================
for i = 1, 10 do
    local key = i % 10
    hl.bind(mainMod .. " + " .. key,           hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. key,   hl.dsp.window.move({ workspace = i }))
end

-- Special Workspace (Scratchpad)
hl.bind(mainMod .. " + S",         hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Mouse Workspace Scrolling
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Mouse Window Dragging/Resizing
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- =============================================================================
-- Multimedia / Hardware Keys
-- =============================================================================
local hw_opts = { locked = true, repeating = true }

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), hw_opts)
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      hw_opts)
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     hw_opts)
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   hw_opts)
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  hw_opts)
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  hw_opts)

-- Media Player Keys
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

-- =============================================================================
-- Hyprshot (Screenshots)
-- =============================================================================
hl.bind(mainMod .. " + PRINT",         hl.dsp.exec_cmd("hyprshot -m window"))
hl.bind("PRINT",                       hl.dsp.exec_cmd("hyprshot -m output"))
hl.bind(mainMod .. " + SHIFT + PRINT", hl.dsp.exec_cmd("hyprshot -m region"))

-- =============================================================================



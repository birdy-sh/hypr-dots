---- MY PROGRAMS ----
---------------------

-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
hl.on("hyprland.start", function ()
hl.exec_cmd("systemctl --user start hyprpolkitagent")
hl.exec_cmd("waybar & awww-daemon & dunst & hyprlock & hypridle")
hl.exec_cmd("~/Scripts/batt.sh")
hl.exec_cmd("~/Scripts/wall.sh")
hl.exec_cmd("clipse -listen")
hl.exec_cmd("hyprctl setcursor ChameleonTrix 16")
hl.exec_cmd("nm-applet")
end)
--



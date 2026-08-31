
require("auto")
require("keybinds")
require("looks")
require("inputs")
require("monitors")
require("rules")

--Custom Colors

HOME = os.getenv("HOME")

--Path to matugen Colors

dofile(HOME .. "/.config/hypr/colors.lua")



-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")
--hl.env("HYPRCURSOR_THEME, ChameleonTrix 16")
--hl.env("XCURSOR_THEME,ChameleonTrix 16")

-- Qt Theming & Kvantum
hl.env("QT_QPA_PLATFORMTHEME", "qt5ct") -- Picks theme from qt5ct, use with Kvantum
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct") -- Picks theme from qt6ct, use with Kvantum
hl.env("QT_STYLE_OVERRIDE", "kvantum")

-- Backend Fallbacks (GTK & Qt)
hl.env("GDK_BACKEND", "wayland,x11,*")   -- GTK: Wayland -> X11 -> any
hl.env("QT_QPA_PLATFORM", "wayland;xcb") -- Qt: Wayland -> X11 fallback
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")

-- XDG Specifications & Integration
hl.env("XDG_DATA_DIRS", "/usr/local/share/:/usr/share/:/var/lib/flatpak/exports/share") -- Flatpaks in wofi
hl.env("XDG_MENU_PREFIX", "arch-") -- Fixes "open with" option in Dolphin

-- App-Specific Utilities
hl.env("GRIMBLAST_EDITOR", "photoflare")

-- Commented-out lines from your config translated:
-- hl.env("GTK_THEME", "adw-gtk3-dark")
-- hl.env("HYPRSHOT_DIR", os.getenv("HOME") .. "/Pictures/Hyprshot") 
-- hl.env("QT_QPA_PLATFORM", "wayland")

-----------------------
----- PERMISSIONS -----
-----------------------

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Permissions/
-- Please note permission changes here require a Hyprland restart and are not applied on-the-fly
-- for security reasons

-- hl.config({
--   ecosystem = {
--     enforce_permissions = true,
--   },
-- })

-- hl.permission("/usr/(bin|local/bin)/grim", "screencopy", "allow")
-- hl.permission("/usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland", "screencopy", "allow")
-- hl.permission("/usr/(bin|local/bin)/hyprpm", "plugin", "allow")






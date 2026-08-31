--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- Example window rules that are useful

--local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
--    match = { class = ".*" },

--    suppress_event = "maximize",
--})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Layer rules also return a handle.
-- local overlayLayerRule = hl.layer_rule({
--     name  = "no-anim-overlay",
--     match = { namespace = "^my-overlay$" },
--     no_anim = true,
-- })
-- overlayLayerRule:set_enabled(false)

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

--Custom rules
-- Set opacity to 1.0 active, 0.5 inactive and 0.8 fullscreen for kitty
hl.window_rule({
  match   = { class = "org.kde.haruna" },
  opacity = "1.0 override 1.0 override 1.0 override",
  })
  
-- Set opacity to 1.0 active, 0.5 inactive and 0.8 fullscreen for notesnook
hl.window_rule({
  match   = { class = "Notesnook" },
  opacity = "1.0 override 1.0 override 1.0 override",
  })

  --Clipse
  
hl.window_rule({
  match   = { class = "clipse" },
  float = true,
  size = { "500", "500" }
})


  -- Enable blur for waybar
--hl.layer_rule({ match = { namespace = "waybar" }, blur = true })

-- Disable blur for firefox
hl.window_rule({ match = { class = "firefox" }, no_blur = true })

-- Set rounding to 10 for kitty
hl.window_rule({ match = { class = "kitty" }, rounding = 20 })

-- Disable blur for thunar
hl.window_rule({ match = { class = "thunar" }, no_blur = true })


-- Disable blur for signal
hl.window_rule({ match = { class = "signal" }, no_blur = false })

hl.window_rule({
  match   = { class = "signal"},
  opacity = "1.0 override 0.5 override 0.6 override",
  })

--scrolling for workspace 4
--hl.workspace_rule({ workspace = "4", layout = "scrolling" })

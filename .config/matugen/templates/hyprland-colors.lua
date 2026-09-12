

return {
    primary = "{{ colors.primary.default.rgba }}",
    secondary = "{{ colors.secondary.default.rgba }}",
    tertiary = "{{ colors.tertiary.default.rgba }}",

    -- Borders and UI accents
    border_active = "{{ colors.primary.default.rgba }}",
    border_inactive = "{{ colors.outline.default.rgba }}",

    -- Gradients
    inactive_gradient = {
        colors = {
            "{{ colors.surface_container.default.rgba }}",
            "{{ colors.surface.default.rgba }}"
        },
        angle = 45
    }
}

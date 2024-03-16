local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.default_prog = { 'pwsh' }
config.default_cwd = "~"

config.font = wezterm.font({
  family = 'MonaspiceNe Nerd Font Mono',
  weight = 'Bold',
  italic = false,
  harfbuzz_features = { 'liga=1' },
})
config.font_size = 11
config.custom_block_glyphs = false
config.freetype_load_flags = 'NO_HINTING'

config.front_end = "OpenGL"
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.default_cursor_style = 'SteadyBar'
config.use_fancy_tab_bar = true
config.show_new_tab_button_in_tab_bar = false
config.window_background_opacity = 0.95
config.initial_rows = 40
config.initial_cols = 150

config.window_frame = {
    active_titlebar_bg = '#000',
    inactive_titlebar_bg = '#000'
}

-- config.color_scheme = 'catppuccin-mocha'
-- local CATPcolor = wezterm.color.get_builtin_schemes()['catppuccin-mocha']
-- CATPcolor.ansi[1] = '#000'
-- config.color_schemes = {
--   ['CATP'] = CATPcolor,
-- }

-- config.colors = { --maetrial ocean custom
--     foreground = "#fff",
--     background = "#0f111a",
--     cursor_bg = "#ffcc00",
--     cursor_border = "#ffcc00",
--     cursor_fg = "#0f111a",
--     selection_bg = "#1f2233",
--     selection_fg = "#8f93a2",

--     ansi = { "#000", "#ff5370", "#81fc89", "#ffcb6b", "#82aaff", "#c792ea", "#89ddff", "#ffffff" },
--     brights = { "#546e7a", "#ff5370", "#81fc89", "#ffcb6b", "#82aaff", "#c792ea", "#89ddff", "#ffffff" },

--     tab_bar = {
--         background = '#0b0022',   -- This is the color of the strip that goes along the top of the window
--         active_tab = {
--             bg_color = '#0f111a', -- Matches your background color
--             fg_color = '#fff',    -- Matches your foreground color
--             italic = false,
--         },
--         inactive_tab = {
--             bg_color = '#000', -- black
--             fg_color = '#fff', -- Matches your foreground color
--             italic = false,
--         },
--         inactive_tab_hover = {
--             bg_color = '#1f2233', -- A lighter shade to act as a divider
--             fg_color = '#fff',    -- Matches your foreground color
--             italic = true,
--         }
--     },
-- }

config.colors = { --drcula custom
    foreground = "#1e1f29",
    background = "#0f111a",
    cursor_bg = "#bbbbbb",
    cursor_border = "#bbbbbb",
    cursor_fg = "#ffffff",
    selection_bg = "#44475a",
    selection_fg = "#ffffff",

    ansi = {"#000000","#ff5555","#50fa7b","#f1fa8c","#bd93f9","#ff79c6","#8be9fd","#bbbbbb"},
    brights = {"#555555","#ff5555","#50fa7b","#f1fa8c","#bd93f9","#ff79c6","#8be9fd","#ffffff"},

    tab_bar = {
        background = '#0b0022',   -- This is the color of the strip that goes along the top of the window
        active_tab = {
            bg_color = '#0f111a', -- Matches your background color
            fg_color = '#fff',    -- Matches your foreground color
            italic = false,
        },
        inactive_tab = {
            bg_color = '#000', -- black
            fg_color = '#fff', -- Matches your foreground color
            italic = false,
        },
        inactive_tab_hover = {
            bg_color = '#1f2233', -- A lighter shade to act as a divider
            fg_color = '#fff',    -- Matches your foreground color
            italic = true,
        }
    },
}

config.leader = { key = "Space", mods = "SHIFT" }
config.keys = {
    { key = "a",  mods = "LEADER|CTRL",  action = wezterm.action { SendString = "\x01" } },
    { key = "-",  mods = "LEADER",       action = wezterm.action { SplitVertical = { domain = "CurrentPaneDomain" } } },
    { key = "\\", mods = "LEADER",       action = wezterm.action { SplitHorizontal = { domain = "CurrentPaneDomain" } } },
    { key = "s",  mods = "LEADER",       action = wezterm.action { SplitVertical = { domain = "CurrentPaneDomain" } } },
    { key = "v",  mods = "LEADER",       action = wezterm.action { SplitHorizontal = { domain = "CurrentPaneDomain" } } },
    { key = "o",  mods = "LEADER",       action = "TogglePaneZoomState" },
    { key = "z",  mods = "LEADER",       action = "TogglePaneZoomState" },
    { key = "c",  mods = "LEADER",       action = wezterm.action { SpawnTab = "CurrentPaneDomain" } },
    { key = "h",  mods = "LEADER",       action = wezterm.action { ActivatePaneDirection = "Left" } },
    { key = "j",  mods = "LEADER",       action = wezterm.action { ActivatePaneDirection = "Down" } },
    { key = "k",  mods = "LEADER",       action = wezterm.action { ActivatePaneDirection = "Up" } },
    { key = "l",  mods = "LEADER",       action = wezterm.action { ActivatePaneDirection = "Right" } },
    { key = "H",  mods = "LEADER|SHIFT", action = wezterm.action { AdjustPaneSize = { "Left", 5 } } },
    { key = "J",  mods = "LEADER|SHIFT", action = wezterm.action { AdjustPaneSize = { "Down", 5 } } },
    { key = "K",  mods = "LEADER|SHIFT", action = wezterm.action { AdjustPaneSize = { "Up", 5 } } },
    { key = "L",  mods = "LEADER|SHIFT", action = wezterm.action { AdjustPaneSize = { "Right", 5 } } },
    { key = "1",  mods = "LEADER",       action = wezterm.action { ActivateTab = 0 } },
    { key = "2",  mods = "LEADER",       action = wezterm.action { ActivateTab = 1 } },
    { key = "3",  mods = "LEADER",       action = wezterm.action { ActivateTab = 2 } },
    { key = "4",  mods = "LEADER",       action = wezterm.action { ActivateTab = 3 } },
    { key = "5",  mods = "LEADER",       action = wezterm.action { ActivateTab = 4 } },
    { key = "6",  mods = "LEADER",       action = wezterm.action { ActivateTab = 5 } },
    { key = "7",  mods = "LEADER",       action = wezterm.action { ActivateTab = 6 } },
    { key = "8",  mods = "LEADER",       action = wezterm.action { ActivateTab = 7 } },
    { key = "9",  mods = "LEADER",       action = wezterm.action { ActivateTab = 8 } },
    { key = "&",  mods = "LEADER|SHIFT", action = wezterm.action { CloseCurrentTab = { confirm = true } } },
    --[[ { key = "d",  mods = "LEADER",       action = wezterm.action { CloseCurrentPane = { confirm = true } } }, ]]
    { key = "x",  mods = "LEADER",       action = wezterm.action { CloseCurrentPane = { confirm = true } } },
}


return config

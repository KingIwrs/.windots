-- Pull in the wezterm API
local wezterm = require 'wezterm'
local action = wezterm.action

-- This variable holds the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- Disable ligatures. That thing where it combines stuff like !=, <=, ==, etc.
config.harfbuzz_features = {'calt=0', 'clig=0', 'liga=0'}

-- Set font
config.font = wezterm.font("Sono Merged", {weight = "ExtraBold"})
config.font_size = 20

-- Change the initial geometry for new windows:
config.initial_cols = 145
config.initial_rows = 40

config.hide_tab_bar_if_only_one_tab = true


-- background

config.window_decorations = "RESIZE"
config.default_prog = {'nu'}
config.window_background_opacity = 0.35
config.win32_system_backdrop = "Acrylic"
local monitor = 'btm'
local matrix = 'pymatrix-rain'


-- Keybindings
config.keys = {
    {
        mods = 'CTRL|SHIFT',
        key = 'k',
        action = action.Multiple {
            action.ClearScrollback 'ScrollbackAndViewport',
            action.SendKey {key = 'L', mods = 'CTRL'}
        }
    },
    {mods = 'ALT', key = 'c', action = action.CloseCurrentPane({confirm = true})},
    {mods = 'ALT', key = 'h', action = action.ActivatePaneDirection('Left')},
    {mods = 'ALT', key = 'j', action = action.ActivatePaneDirection('Down')},
    {mods = 'ALT', key = 'k', action = action.ActivatePaneDirection('Up')},
    {mods = 'ALT', key = 'l', action = action.ActivatePaneDirection('Right')},
    {mods = 'ALT|SHIFT', key = 'h', action = action.SplitPane({direction = 'Left', size = {Percent = 50}})},
    {mods = 'ALT|SHIFT', key = 'j', action = action.SplitPane({direction = 'Down', size = {Percent = 50}})},
    {mods = 'ALT|SHIFT', key = 'k', action = action.SplitPane({direction = 'Up', size = {Percent = 50}})},
    {mods = 'ALT|SHIFT', key = 'l', action = action.SplitPane({direction = 'Right', size = {Percent = 50}})},
    {mods = 'ALT', key = 'u', action = action.AdjustPaneSize {'Left', 5}},
    {mods = 'ALT', key = 'i', action = action.AdjustPaneSize {'Down', 5}},
    {mods = 'ALT', key = 'o', action = action.AdjustPaneSize {'Up', 5}},
    {mods = 'ALT', key = 'p', action = action.AdjustPaneSize {'Right', 5}},
    {mods = 'ALT|CTRL|SHIFT', key = 'a', action = action.Multiple {
            action.SplitPane({direction = 'Right', size = {Percent = 50}, command = {args = {monitor}}}),
            action.SplitPane({direction = 'Down', size = {Percent = 50}, command = {args = {matrix}}}),
        }
    },
}


-- Returns the configuration to wezterm:
return config

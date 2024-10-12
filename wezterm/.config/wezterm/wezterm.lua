local wezterm = require("wezterm")
local act = wezterm.action

local config = {
	font_size = 12,
	font = wezterm.font("Maple Mono NF CN"),
	color_scheme = "Catppuccin Mocha",

	initial_cols = 100,
	initial_rows = 30,

	audible_bell = "Disabled",

	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	window_decorations = "NONE",
	window_background_opacity = 0.85,
	text_background_opacity = 0.85,
	window_padding = {
		left = 50,
		right = 20,
		top = 30,
		bottom = 10,
	},

	leader = { key = "a", mods = "CTRL" },
	keys = {
		-- Tab Config
		{
			key = "c",
			mods = "LEADER",
			action = act.SpawnTab("CurrentPaneDomain"),
		},
		{ key = "p", mods = "LEADER", action = act.ActivateTabRelative(-1) },
		{ key = "n", mods = "LEADER", action = act.ActivateTabRelative(1) },
		-- Rename tab title
		{
			key = ",",
			mods = "LEADER",
			action = act.PromptInputLine({
				description = "Enter new name for tab",
				action = wezterm.action_callback(function(window, pane, line)
					-- line will be `nil` if they hit escape without entering anything
					-- An empty string if they just hit enter
					-- Or the actual line of text they wrote
					if line then
						window:active_tab():set_title(line)
					end
				end),
			}),
		},

		-- Pane Config
		{
			key = [[\]],
			mods = "LEADER",
			action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		},
		{
			key = [[-]],
			mods = "LEADER",
			action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
		},
		{ key = "k", mods = "LEADER", action = act.ActivatePaneDirection("Up") },
		{ key = "j", mods = "LEADER", action = act.ActivatePaneDirection("Down") },
		{ key = "h", mods = "LEADER", action = act.ActivatePaneDirection("Left") },
		{ key = "l", mods = "LEADER", action = act.ActivatePaneDirection("Right") },
		{ key = "F11", mods = "", action = act.ToggleFullScreen },
	},
}
return config

-- ── General settings ──────────────────────────────

hl.config({
	general = {
		gaps_in = 5,
		gaps_out = 12,
		border_size = 2,

		-- Window borders: existing four-color palette
		["col.active_border"] = "rgb(788198)",
		["col.inactive_border"] = "rgb(3C4255)",

		layout = "dwindle",
		resize_on_border = true,
		allow_tearing = false,
	},

	-- ── Window appearance ─────────────────────────

	decoration = {
		rounding = 12,

		active_opacity = 1.0,
		inactive_opacity = 1.0,
		fullscreen_opacity = 1.0,

		blur = {
			enabled = true,
			size = 4,
			passes = 2,
		},

		shadow = {
			enabled = true,
			range = 12,
			render_power = 3,
			color = "rgba(20232F88)",
		},
	},

	-- ── Animations ────────────────────────────────
	-- Use default animation definitions.

	animations = {
		enabled = true,
	},

	-- ── Keyboard and mouse ────────────────────────

	input = {
		kb_layout = "us",
		numlock_by_default = true,

		repeat_rate = 35,
		repeat_delay = 300,

		follow_mouse = 1,
		sensitivity = 0.0,

		touchpad = {
			natural_scroll = false,
		},
	},

	-- ── Dwindle layout ────────────────────────────

	dwindle = {
		pseudotile = true,
		preserve_split = true,
	},

	-- ── Miscellaneous ─────────────────────────────

	misc = {
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
	},
})
	hl.window_rule({
		match = { class = "flameshot" },
		float = true,
		pin = true,
		no_anim = true,
		no_blur = true,
		no_shadow = true, 
		decorate = false,
})
	hl.window_rule({
		match = { class = "flameshot", title = "flameshot" },
		move = { 0, 0 }
	})

-- ── Application commands ──────────────────────────

-- Change this if your Zen installation uses another command.
local browser = "zen-browser"

local terminal = "ghostty"
local launcher = "rofi -show drun"
local files = "nautilus"

-- ── Applications ──────────────────────────────────

hl.bind("SUPER + Return", hl.dsp.exec_cmd(terminal))
hl.bind("SUPER + B", hl.dsp.exec_cmd(browser))
hl.bind("SUPER + E", hl.dsp.exec_cmd(files))
hl.bind("SUPER + D", hl.dsp.exec_cmd(launcher))
hl.bind("SUPER + SHIFT + D", hl.dsp.exec_cmd("rofi -show run"))
hl.bind("SUPER + SHIFT + B", hl.dsp.exec_cmd("ghostty -e btop"))

-- ── Desktop utilities ─────────────────────────────

hl.bind("SUPER + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind("SUPER + N", hl.dsp.exec_cmd("swaync-client -t"))
hl.bind("SUPER + Escape", hl.dsp.exec_cmd("wlogout"))

hl.bind("SUPER + V", hl.dsp.exec_cmd(
    "cliphist list | rofi -dmenu -p Clipboard | cliphist decode | wl-copy"
))

hl.bind("SUPER + W", hl.dsp.exec_cmd(
    "sh \"$HOME/.config/hypr/scripts/wallpaper-picker.sh\""
))
hl.bind("Print",hl.dsp.exec_cmd("flameshot full"))
hl.bind("SHIFT + Print", hl.dsp.exec_cmd("flameshot gui"))
-- ── Window controls ───────────────────────────────

hl.bind("SUPER + Q", hl.dsp.window.close())
hl.bind("SUPER + F", hl.dsp.window.fullscreen())
hl.bind("SUPER + SHIFT + Space", hl.dsp.window.float())
hl.bind("SUPER + C", hl.dsp.window.center())
hl.bind("SUPER + P", hl.dsp.window.pin())

hl.bind("ALT + Tab", function()
    hl.dispatch(hl.dsp.window.cycle_next())
    hl.dispatch(hl.dsp.window.bring_to_top())
end)

-- ── Focus and move windows ────────────────────────

local directions = {
    Left = "l",
    Right = "r",
    Up = "u",
    Down = "d"
}

for key, direction in pairs(directions) do
    hl.bind("SUPER + " .. key,
        hl.dsp.focus({ direction = direction })
    )

    hl.bind("SUPER + SHIFT + " .. key,
        hl.dsp.window.move({ direction = direction })
    )
end

-- ── Resize windows ────────────────────────────────

hl.bind("SUPER + CTRL + Left",
    hl.dsp.window.resize({ x = -30, y = 0, relative = true })
)

hl.bind("SUPER + CTRL + Right",
    hl.dsp.window.resize({ x = 30, y = 0, relative = true })
)

hl.bind("SUPER + CTRL + Up",
    hl.dsp.window.resize({ x = 0, y = -30, relative = true })
)

hl.bind("SUPER + CTRL + Down",
    hl.dsp.window.resize({ x = 0, y = 30, relative = true })
)

-- ── Workspaces I–X ────────────────────────────────

for workspace = 1, 10 do
    local key = tostring(workspace % 10)
    local target = tostring(workspace)

    -- Switch to workspace.
    hl.bind("SUPER + " .. key,
        hl.dsp.focus({ workspace = target })
    )

    -- Send window to workspace without following it.
    hl.bind("SUPER + SHIFT + " .. key,
        hl.dsp.window.move({
            workspace = target,
            follow = false
        })
    )
end

-- ── Scratchpad ────────────────────────────────────

hl.bind("SUPER + S",
    hl.dsp.workspace.toggle_special("scratchpad")
)

hl.bind("SUPER + SHIFT + S",
    hl.dsp.window.move({
        workspace = "special:scratchpad",
        follow = false
    })
)

-- ── Reload configuration ──────────────────────────

hl.bind("SUPER + SHIFT + R", function()
	hl.exec_cmd("hyperctl reload")
end)

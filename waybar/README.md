# Storm Waybar — Fedora + Niri

A rounded, steel-blue/slate Waybar theme inspired by the supplied *storm.jpg* wallpaper.

## Install

Copy `config.jsonc` and `style.css` into `~/.config/waybar/`.

```bash
mkdir -p ~/.config/waybar
cp config.jsonc style.css ~/.config/waybar/
```

Install the packages (some may require enabling a repository or installing separately):

```bash
sudo dnf install waybar rofi NetworkManager-gnome blueman wl-clipboard cliphist btop
```

Also install/configure:
- `swaync` for the notification toggle
- `wlogout` for the power menu
- `ghostty` for launching btop
- Maple Mono NF and Symbols Nerd Font (or another Nerd Font)

Start Waybar with `waybar`. Add `waybar` to your existing Niri startup config if desired.

## Roman numeral workspaces

Waybar displays the workspace names reported by Niri; it does not convert numeric workspace indices to Roman numerals. Name your Niri workspaces `I`, `II`, `III`, `IV`, `V`, etc. using the syntax supported by your installed Niri version, and adapt existing workspace keybinds to match.

## Notes

- The tray is the background-app area for apps that expose tray icons.
- Clipboard history requires `cliphist` to be collecting clipboard events in your session. If you have not set that up yet, configure its watcher using your compositor/session startup.
- The Fedora logo glyph depends on your installed Nerd Font.
- `nm-connection-editor`, `swaync-client`, `rofi`, `blueman-manager`, `cliphist`, `ghostty`, and `wlogout` must be available for their respective click actions.
- If your Niri version or Waybar build names the workspace module differently, check `waybar -m` and the installed Waybar module documentation.

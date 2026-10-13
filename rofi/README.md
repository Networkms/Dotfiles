# Storm Rofi theme

A rounded slate / steel-blue Rofi theme designed to match the Storm wallpaper and Storm Waybar.

## Install

```bash
mkdir -p ~/.config/rofi
cp config.rasi ~/.config/rofi/config.rasi
```

Launch the app menu:

```bash
rofi -show drun
```

Or test this config explicitly:

```bash
rofi -config ~/.config/rofi/config.rasi -show drun
```

## Font

The theme uses `Maple Mono NF`. Install it first, or change the font in `config.rasi` to a font installed on your system.

## Modes

- `drun`: desktop apps
- `run`: commands
- `window`: open windows

If Rofi reports a theme/parser error, check your installed Rofi version; theme properties can vary slightly by version.

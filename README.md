# yabairc

`yabairc` is Haru's personal configure file, combined with `skhd` software.

## Features

- Customizable keyboard shortcuts
- Intergration of multiple functions (e.g., layout adjustment, windows/spaces switching)
- Flexible window operation configuration

## Disabling System Integrity Protection (SIP)

To use `yabai` and its associated configuration, you may need to disable partially macOS SIP.
You can follow this [guidance](https://github.com/koekeishiya/yabai/wiki/Disabling-System-Integrity-Protection)

## Requirements

- **macOS**: This configuration is specifically designed for macOS.
- **koekeishiya/yabai**: A tilling windows manager for macOS. Follow the [yabai installation](https://github.com/koekeishiya/yabai/wiki/Installing-yabai-(latest-release)) for setup instructions.
- **koekeishiya/skhd**: A simple hotkey daemon for macOS.
- **FelixKratz/Jankyborder**: [*JankyBorders*](https://github.com/FelixKratz/JankyBorders) is a lightweight tool designed to add colored borders to user windows on macOS 14.0+.

## Installation

1. Clone this repository:

```bash

mkdir -p ~/.config/
# clone repo via git
git clone https://github.com/overduse/yabairc ~/.config/
# or clone repo via gh
gh repo clone overduse/yabairc ~/.config/

# rename dir: yabairc -> dir: yabai under ~/.config/
mv ~/.config/yabairc ~/.config/yabai/

```

2. Clone skhd configure

Put my [skhd configure](https://github.com/overduse/skhdrc) under the path `~/.config/skhd/`.

```bash
# clone repo via git
git clone https://github.com/overduse/skhdrc ~/.config/
# or clone repo via gh
gh repo clone overduse/yabairc ~/.config/

# rename dir: skhdrc -> dir: skhd under ~/.config/
mv ~/.config/skhdrc ~/.config/skhd/

```

# ScopeBuddy - GNOME
A manager script to make gamescope easier to use on the desktop (or if you use it in desktop mode and gamemode)

Originally made for [Bazzite](https://bazzite.gg), modified to support Gnome Desktops, possibly others that have display information that can be found with xrandr. 

Turn this

![gamescope Launch Options](/repo_content/launch_options_gamescope.png?raw=true "gamescope Launch Options")

Into this (you can also replace `scopebuddy` with `scb` if you set that up)

![scopebuddy Launch Options](/repo_content/launch_options_scopebuddy.png?raw=true "scopebuddy Launch Options")

Features:
* Fixes the Steam Overlay when used in nested/desktop mode
* Fixes SteamInput when used in nested/desktop mode
* Does not launch gamescope when it detects being started inside gamemode/gamescope-session
* Enables you to define global defaults arguments for gamescope in desktop mode
* Enables you to define per-game arguments for gamescope
* Enables you to define global and per-game ENV variables
* Optionally use scb just for ENV var management
* Automatically infer display output args (output width, height, refresh rate, HDR, or VRR flags) from primary display (KDE only)

## Documentaion and usage
Look at https://docs.bazzite.gg/Advanced/scopebuddy/

## Installation

### Requirements
* bash
* [gamescope](https://github.com/ValveSoftware/gamescope)
* perl
* xrandr
* wlr-randr
* x11-xserver-utils

if using `$SCB_AUTO_RES`/`$SCB_AUTO_HDR`/`$SCB_AUTO_VRR`:
* `jq` (installed by default on Bazzite - other distros may need to install manually)
* KDE Plasma desktop 
* GNOME desktop

#### Using curl:
```bash
sudo curl -Lo /usr/local/bin/scopebuddy https://raw.githubusercontent.com/theronlindsay/ScopeBuddyGNOME/refs/heads/main/bin/scopebuddy
sudo chmod +x /usr/local/bin/scopebuddy
```

#### Using wget:
```bash
sudo wget -O /usr/local/bin/scopebuddy https://raw.githubusercontent.com/theronlindsay/ScopeBuddyGNOME/refs/heads/main/bin/scopebuddy
sudo chmod +x /usr/local/bin/scopebuddy
```

#### Make `scb` symlink because we love short commands
NOTE: You only need to do this once

```bash
sudo ln -s scopebuddy /usr/local/bin/scb
```

#### Specific version:
* Download the versioned release from github releases
* Extract the script
* Move to /usr/local/bin or /usr/bin
* make scb symlink

## GUI Configuration
TealMango in the Bazzite community has made a GUI tool to configure scopebuddy.
Well worth to check it out here: [ScopeBuddy-GUI](https://github.com/rfrench3/scopebuddy-gui)

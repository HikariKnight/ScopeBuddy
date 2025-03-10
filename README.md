# ScopeBuddy
A manager script to make gamescope easier to use on the desktop (or if you use it in desktop mode and gamemode)

Originally made for [Bazzite](https://bazzite.gg), released here so more projects can make use of it! ❤️

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
* Bash scripting support!

## Documentaion and usage
Look at https://docs.bazzite.gg/Advanced/scopebuddy/

## Installation

### Requirements
* bash
* [gamescope](https://github.com/ValveSoftware/gamescope)
* perl

Using curl:
```bash
sudo curl -Lo /usr/local/bin/scopebuddy https://raw.githubusercontent.com/HikariKnight/ScopeBuddy/refs/heads/main/bin/scopebuddy
sudo chmod +x /usr/local/bin/scopebuddy
sudo ln -s scopebuddy /usr/local/bin/scb
```

Using wget:
```bash
sudo wget -O /usr/local/bin/scopebuddy https://raw.githubusercontent.com/HikariKnight/ScopeBuddy/refs/heads/main/bin/scopebuddy
sudo chmod +x /usr/local/bin/scopebuddy
sudo ln -s scopebuddy /usr/local/bin/scb
```

Specific version:
* Download the versioned release from github releases
* Extract the script
* Move to /usr/local/bin or /usr/bin
* make scb symlink

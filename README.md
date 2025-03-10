# ScopeBuddy
A manager script to make gamescope easier to use on the desktop (or if you use it in desktop mode and gamemode)

Originally made for [Bazzite](https://bazzite.gg), released here so more projects can make use of it! ❤️

## Documentaion and usage
Look at https://docs.bazzite.gg/Advanced/scopebuddy/

## Installation

### Requirements
* bash
* [gamescope](https://github.com/ValveSoftware/gamescope)
* perl

Using curl:
```bash
sudo curl -o /usr/local/bin/scopebuddy https://raw.githubusercontent.com/HikariKnight/ScopeBuddy/refs/heads/main/bin/scopebuddy
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

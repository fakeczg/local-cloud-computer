- dir: `/data/bin/tools`
# tmux
- `ln  -fs /data/bin/tools/tmux/tmux.conf  ~/.tmux.conf`

# i3
- laptop:
 - `ln -fs /data/bin/tools/i3/laptop_config  ~/.config/i3/config`
## i3status and i3status-rust
- `ln -fs /data/bin/tools/i3/i3status-rust  ~/.config`
    - laptop:
        - `ln -fs /data/bin/tools/i3/i3status-rust/laptop_config.toml  ~/.config/i3status-rust/config.toml`
    - desktop:
        - `ln -fs /data/bin/tools/i3/i3status-rust/desktop_config.toml  ~/.config/i3status-rust/config.toml`

- `ln -fs /data/bin/tools/i3/i3status  ~/.config`

# vscode
- `ln -fs /data/bin/tools/vscode/settings.json  /home/fovt/.config/Code/User/settings.json`
- `ln -fs /data/bin/tools/vscode/keybindings.json  /home/fovt/.config/Code/User/keybindings.json`

# nvim
- https://github.com/ayamir/nvimdots
- `nvim/gen_patch.sh`

# alacritty
- `sudo ln -fs /data/bin/tools/alacritty/alacritty_tmux /usr/bin/`

# md
- `markdown一些常用的操作`

- dir: `/data/bin/local-cloud-computer`

# tmux

- `ln  -fs /data/bin/local-cloud-computer/tmux/tmux.conf  ~/.tmux.conf`

# i3

- laptop:
  - `ln -fs /data/bin/local-cloud-computer/i3/laptop_config  ~/.config/i3/config`
- desktop:
  - `ln -fs /data/bin/local-cloud-computer/i3/desktop_config ~/.config/i3/config`

## i3status and i3status-rust

- `ln -fs /data/bin/local-cloud-computer/i3/i3status-rust  ~/.config`

  - laptop:
    - `ln -fs /data/bin/local-cloud-computer/i3/i3status-rust/laptop_config.toml  ~/.config/i3status-rust/config.toml`
  - desktop:
    - `ln -fs /data/bin/local-cloud-computer/i3/i3status-rust/desktop_config.toml  ~/.config/i3status-rust/config.toml`

- `ln -fs /data/bin/local-cloud-computer/i3/i3status  ~/.config`

# vscode

- `ln -fs /data/bin/local-cloud-computer/vscode/settings.json  /home/fovt/.config/Code/User/settings.json`
- `ln -fs /data/bin/local-cloud-computer/vscode/keybindings.json  /home/fovt/.config/Code/User/keybindings.json`

# nvim

- https://github.com/ayamir/nvimdots
- `nvim/gen_patch.sh`

# alacritty

- `sudo ln -fs /data/bin/local-cloud-computer/alacritty/alacritty_tmux /usr/bin/`
- `sudo ln -fs /data/bin/local-cloud-computer/alacritty/alacritty_night /usr/bin/`
- `sudo ln -fs /data/bin/local-cloud-computer/alacritty/alacritty_light /usr/bin/`

# fish

- `ln -fs /data/bin/local-cloud-computer/fish/fish_config  ~/.config/fish/config.fish`

# tig

- `ln  -fs /data/bin/local-cloud-computer/tig/tigrc  ~/.tigrc`

# ranger

- `sudo ln -fs /data/bin/local-cloud-computer/ranger  ~/.config/`

# sway

- `# ln -s /data/bin/local-cloud-computer/sway/waybar_style.css ~/.config/waybar/waybar_style.css`
- `# ln -s /data/bin/local-cloud-computer/sway/waybar_config ~/.config/waybar/waybar_config`
- `# ln -s /data/bin/local-cloud-computer/sway/sway_config ~/.config/sway/config`

# git

- `ln -s /data/bin/local-cloud-computer/git/.gitconfig ~/.gitconfig` -f

# vim

- `ln -s /data/bin/local-cloud-computer/vim/.vimrc ~/.vimrc` -f

# debug

- `一些调试常用的内容`

# md

- `markdown一些常用的操作`

# swimming

- `# ln -fs /data/bin/local-cloud-computer/swimming/convert /data/bin/music`

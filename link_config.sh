#!/bin/bash

# 检查传入的参数，必须为 laptop 或 desktop
if [ "$1" != "laptop" ] && [ "$1" != "desktop" ]; then
	echo "Usage: $0 {laptop|desktop}"
	exit 1
fi

# 设定配置类型（laptop 或 desktop）
CONFIG_TYPE=$1

# 获取当前用户的主目录
USER_HOME=$(eval echo ~$USER)

# 检查并创建目录的函数
create_directory() {
	if [ ! -d "$1" ]; then
		echo "目录 $1 不存在，正在创建..."
		mkdir -p "$1"
	fi
}

# 检查并创建文件的函数
create_file() {
	if [ ! -f "$1" ]; then
		echo "文件 $1 不存在，正在创建..."
		touch "$1"
	fi
}

# tmux 配置
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -fs /data/bin/local-cloud-computer/tmux/tmux.conf "$USER_HOME/.tmux.conf"

# i3 配置
if [ "$CONFIG_TYPE" == "laptop" ]; then
	ln -fs /data/bin/local-cloud-computer/i3/laptop_config "$USER_HOME/.config/i3/config"
else
	ln -fs /data/bin/local-cloud-computer/i3/desktop_config "$USER_HOME/.config/i3/config"
fi

# i3status 和 i3status-rust 配置
ln -fs /data/bin/local-cloud-computer/i3/i3status "$USER_HOME/.config"
ln -fs /data/bin/local-cloud-computer/i3/i3status-rust "$USER_HOME/.config"

if [ "$CONFIG_TYPE" == "laptop" ]; then
	ln -fs /data/bin/local-cloud-computer/i3/i3status-rust/laptop_config.toml "$USER_HOME/.config/i3status-rust/config.toml"
else
	ln -fs /data/bin/local-cloud-computer/i3/i3status-rust/desktop_config.toml "$USER_HOME/.config/i3status-rust/config.toml"
fi

# picom配置
ln -fs /data/bin/local-cloud-computer/picom "$USER_HOME/.config"

# vscode 配置
create_directory "$USER_HOME/.config/Code/User"
ln -fs /data/bin/local-cloud-computer/vscode/settings.json "$USER_HOME/.config/Code/User/settings.json"
ln -fs /data/bin/local-cloud-computer/vscode/keybindings.json "$USER_HOME/.config/Code/User/keybindings.json"

# nvim 配置
# 这里假设你已经手动执行了 `nvim/gen_patch.sh`
# 如果需要自动执行，请取消注释下面的行
# nvim/gen_patch.sh

# alacritty 配置
sudo ln -fs /data/bin/local-cloud-computer/alacritty/alacritty_tmux /usr/bin/
sudo ln -fs /data/bin/local-cloud-computer/alacritty/alacritty_night /usr/bin/
sudo ln -fs /data/bin/local-cloud-computer/alacritty/alacritty_light /usr/bin/

# fish 配置
ln -fs /data/bin/local-cloud-computer/fish/fish_config "$USER_HOME/.config/fish/config.fish"

# tig 配置
ln -fs /data/bin/local-cloud-computer/tig/tigrc "$USER_HOME/.tigrc"

# ranger 配置
sudo ln -fs /data/bin/local-cloud-computer/ranger "$USER_HOME/.config/"

# git 配置
ln -s /data/bin/local-cloud-computer/git/.gitconfig "$USER_HOME/.gitconfig" -f

# vim 配置
ln -s /data/bin/local-cloud-computer/vim/.vimrc "$USER_HOME/.vimrc" -f

# debug
echo "一些调试常用的内容"

# md
echo "markdown一些常用的操作"

# 注释掉 sway 和 swimming 的链接
# sway 配置
# create_directory "$USER_HOME/.config/waybar"
# ln -s /data/bin/local-cloud-computer/sway/waybar_style.css "$USER_HOME/.config/waybar/waybar_style.css"
# ln -s /data/bin/local-cloud-computer/sway/waybar_config "$USER_HOME/.config/waybar/waybar_config"
# ln -s /data/bin/local-cloud-computer/sway/sway_config "$USER_HOME/.config/sway/config"

# swimming 配置
# create_directory "/data/bin/music"
# ln -fs /data/bin/local-cloud-computer/swimming/convert /data/bin/music

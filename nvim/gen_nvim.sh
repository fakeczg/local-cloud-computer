paru -S git lazygit zoxide ripgrep fd yarn ttf-jetbrains-mono-nerd lldb nvm make unzip neovim python-pynvim xsel tree-sitter tree-sitter-cli xsel go

paru -S rustup
rustup toolchain install nightly # or stable
if command -v curl >/dev/null 2>&1; then
	bash -c "$(curl -fsSL https://raw.githubusercontent.com/ayamir/nvimdots/HEAD/scripts/install.sh)"
else
	bash -c "$(wget -O- https://raw.githubusercontent.com/ayamir/nvimdots/HEAD/scripts/install.sh)"
fi

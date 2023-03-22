# Install Nix
sh <(curl -L https://nixos.org/nix/install)

# Source Nix
. ~/.nix-profile/etc/profile.d/nix.sh

# Install Packages
nix-env -iA \
	nixpkgs.zsh \
	nixpkgs.antibody \
	nixpkgs.git \
	nixpkgs.nodejs-18_x \
	nixpkgs.neovim \
	nixpkgs.tmux \
	nixpkgs.kitty \
	nixpkgs.stow \
	nixpkgs.yarn \
	nixpkgs.fzf \
	nixpkgs.ripgrep \
	nixpkgs.bat \
	nixpkgs.gnumake \
	nixpkgs.gcc \
	nixpkgs.direnv

# Stow anrepos
stow git
stow nvim
stow tmux
stow zsh
stow kitty
stow p10k

# Add zsh as a login shell
command -v zsh | sudo tee -a /etc/shells

# Use zsh as default shell
sudo chsh -s $(which zsh) $USER

# Bundle zsh plugins 
antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh

# Install neovim plugins
nvim --headless +PlugInstall +qall

# Use kitty terminal on MacOS
[ `uname -s` = 'Darwin' ] && stow kitty

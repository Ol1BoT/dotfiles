# Install Nix

# sh <(curl -L https://nixos.org/nix/install) --no-daemon


# make sure to set the variables after installations
export NIXPKGS_ALLOW_UNFREE=1

nix-env -iA \
  nixpkgs.zsh \
  nixpkgs.direnv \
  nixpkgs.git \
  nixpkgs.neovim \
  nixpkgs.stow \
  nixpkgs.bat \
  nixpkgs.ripgrep \
  nixpkgs.vscode \
  nixpkgs.direnv \
  nixpkgs.oh-my-zsh \
  nixpkgs.antibody \
  nixpkgs.go

# add zsh to login shells
command -v zsh | sudo tee -a ~/etc/shells

#set zsh as default shell
sudo chsh -s $(which zsh) $USER

#bundle zsh plugins
cp ./.zsh_plugins.txt ~/
antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh

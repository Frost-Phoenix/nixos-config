cp /etc/nixos/hardware-configuration.nix hosts/nixos/hardware-configuration.nix
sleep 1
mkdir -p ~/Pictures/wallpapers
sleep 1
cp ./wallpapers/*  ~/Pictures/wallpapers/
sleep 1
sudo nixos-rebuild switch --flake .#nixos
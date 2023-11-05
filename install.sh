cp /etc/nixos/hardware-configuration.nix hosts/nixos/hardware-configuration.nix
sleep 1
mkdir -p ~/Pictures/wallpapers
sleep 1
cp ./wallpaper/wallpaper.png  ~/Pictures/wallpapers/
sleep 1
sudo nixos-rebuild switch --flake .#nixos
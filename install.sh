cp /etc/nixos/hardware-configuration.nix hosts/nixos/hardware-configuration.nix
sleep 1
mkdir -p ~/Music
mkdir -p ~/Documents
mkdir -p ~/Pictures/wallpapers/others
sleep 1
cp wallpapers/wallpaper.png ~/Pictures/wallpapers
cp wallpapers/otherWallpaper/* ~/Pictures/wallpapers/otherswallpapers/wallpaper.png
sleep 1
sudo nixos-rebuild switch --flake .#nixos
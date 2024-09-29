{ inputs, ... }: 
{
  imports = [
    ./keyring.nix
    ./polkit.nix
    ./gnome.nix
  ];
}

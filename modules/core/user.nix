{ pkgs, inputs, username, host, ...}:
{
  imports = [ inputs.home-manager.nixosModules.home-manager ];
  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = true;
    extraSpecialArgs = { inherit inputs username; };
    users.${username} = {
      imports = 
        if (host == "desktop") then 
          [ ./../home/default.desktop.nix ] 
        else [ ./../home ];
      home.username = "${username}";
      home.homeDirectory = "/home/${username}";
      home.stateVersion = "22.11";
      programs.home-manager.enable = true;
    };
  };

  users.users.${username} = {
    isNormalUser = true;
    description = "${username}";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
  };
  nix.settings.allowed-users = [ "${username}" ];
}

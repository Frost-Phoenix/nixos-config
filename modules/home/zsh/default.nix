{ hostname, config, pkgs, ...}: 
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableAutosuggestions = true;
    enableSyntaxHighlighting = true;
    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];

    };
    shellAliases = {
      n = "clear && neofetch";
      v = "nvim";
      record = "wf-recorder --audio=alsa_output.pci-0000_08_00.6.analog-stereo.monitor -f $HOME/Videos/$(date +'%Y%m%d%H%M%S_1.mp4')";
      ani = "bash $HOME/.local/bin/anime --dub";
      ls = "exa --icons --long";

      # nixos
      ncg = "nix-collect-garbage && nix-collect-garbage -d && sudo nix-collect-garbage && sudo nix-collect-garbage -d && sudo rm /nix/var/nix/gcroots/auto/*";
      nix-switch = "sudo nixos-rebuild switch --flake ~/Flakes/.#nixos";
      fl = "cd ~/Flakes/ && v";

      # python
      piv = "python -m venv .venv";
      psv = "source .venv/bin/activate";
    };
  };
}

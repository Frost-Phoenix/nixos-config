{ ... }:
{
  programs.ssh = {
    enable = true;

    addKeysToAgent = "1h";

    controlMaster = "auto";
    controlPath = "~/.ssh/control-%r@%h:%p";
    controlPersist = "10m";

    matchBlocks = {
      github = {
        host = "github.com";
        hostname = "ssh.github.com";
        user = "git";
        port = 443;
        identityFile = "~/.ssh/id_github";
        identitiesOnly = true;
      };
    };
  };

  services.ssh-agent.enable = true;
}

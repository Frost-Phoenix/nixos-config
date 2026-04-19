{ pkgs, config, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./../../modules/core
  ];

  environment.systemPackages = with pkgs; [
    acpi
    brightnessctl

    amdgpu_top
    nvtopPackages.amd

    lm_sensors
  ];

  services = {
    # lact.enable = true;

    power-profiles-daemon.enable = true;

    upower = {
      enable = true;
      percentageLow = 20;
      percentageCritical = 10;
      percentageAction = 5;
      criticalPowerAction = "HybridSleep";
    };
  };

  hardware = {
    cpu.amd.updateMicrocode = true;

    graphics = {
      extraPackages = with pkgs; [
        mesa

        libva
        libva-utils
      ];
    };
  };

  boot = {
    kernelModules = [
      "acpi_call"
      "thinkpad_acpi"
    ];
    kernelParams = [ "amd_pstate=active" ];
    extraModulePackages = with config.boot.kernelPackages; [ acpi_call ];
  };

  systemd.services.set-power-profile-on-boot = {
    description = "Set power profile based on AC state at boot";

    wantedBy = [ "power-profiles-daemon.service" ];
    after = [ "power-profiles-daemon.service" ];
    partOf = [ "power-profiles-daemon.service" ];

    serviceConfig.Type = "oneshot";

    script = ''
      if [ "$(cat /sys/class/power_supply/AC/online 2>/dev/null || echo 0)" = "1" ]; then
        ${pkgs.power-profiles-daemon}/bin/powerprofilesctl set balanced
      else
        ${pkgs.power-profiles-daemon}/bin/powerprofilesctl set power-saver
      fi
    '';
  };

  # Automatically switch power profiles on AC/Battery
  services.udev.extraRules = ''
    SUBSYSTEM=="power_supply", ATTR{type}=="Mains", ATTR{online}=="1", RUN+="${pkgs.power-profiles-daemon}/bin/powerprofilesctl set balanced"
    SUBSYSTEM=="power_supply", ATTR{type}=="Mains", ATTR{online}=="0", RUN+="${pkgs.power-profiles-daemon}/bin/powerprofilesctl set power-saver"
  '';
}

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

  systemd.services.battery-charge-threshold = {
    description = "Set ThinkPad Battery Charge Thresholds";
    wantedBy = [ "sysinit.target" ];
    after = [ "sysinit.target" ];

    serviceConfig.Type = "oneshot";

    script = ''
      # Stop charging at 80%
      echo 80 > /sys/class/power_supply/BAT0/charge_control_end_threshold

      # Start charging only if below 70%
      echo 70 > /sys/class/power_supply/BAT0/charge_control_start_threshold
    '';
  };

  # Automatically switch power profiles on AC/Battery
  services.udev.extraRules = ''
    SUBSYSTEM=="power_supply", ATTR{type}=="Mains", ATTR{online}=="1", RUN+="${pkgs.power-profiles-daemon}/bin/powerprofilesctl set performance"
    SUBSYSTEM=="power_supply", ATTR{type}=="Mains", ATTR{online}=="0", RUN+="${pkgs.power-profiles-daemon}/bin/powerprofilesctl set power-saver"
  '';
}

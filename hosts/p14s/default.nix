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
  ];

  services = {
    # lact.enable = true;

    upower = {
      enable = true;
      percentageLow = 20;
      percentageCritical = 10;
      percentageAction = 5;
      criticalPowerAction = "HybridSleep";
    };

    tlp = {
      enable = true;
      settings = {
        CPU_SCALING_GOVENOR_ON_AC = "performance";
        CPU_SCALING_GOVENOR_ON_BAT = "powersave";

        CPU_ENERGY_PERF_ON_AC = "performance";
        CPU_ENERGY_PERF_ON_BAT = "power";

        START_CHARGE_THRESH_BAT0 = 60;
        STOP_CHARGE_THRESH_BAT0 = 80;

        RESTORE_THRESHOLDS_ON_BAT = 1;
      };
    };
  };

  hardware.graphics = {
    extraPackages = with pkgs; [
      mesa

      libva
      libva-vdpau-driver
    ];
  };

  boot = {
    kernelModules = [ "acpi_call" ];
    kernelParams = [ "amd_pstate=active" ];
    extraModulePackages = with config.boot.kernelPackages; [ acpi_call ];
  };
}

{ pkgs, ... }:
{
  hardware = {
    graphics = {
      enable = true;
      extraPackages = with pkgs; [
        intel-media-driver
        (intel-vaapi-driver.override { enableHybridCodec = true; })
        libva-vdpau-driver
        libvdpau-va-gl
      ];
    };
  };
  hardware.enableRedistributableFirmware = true;
}

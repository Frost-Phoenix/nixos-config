{ pkgs, inputs, ... }:
{
  nixpkgs = {
    overlays = [
      (
        final: prev:
        (import ../../pkgs {
          inherit inputs;
          inherit pkgs;
          inherit (prev) system;
        })
      )
      inputs.nur.overlays.default
    ];
  };
}

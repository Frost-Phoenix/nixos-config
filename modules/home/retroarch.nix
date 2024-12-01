{ pkgs, ... }:
{
  home.packages = (
    with pkgs;
    [
      # (retroarch.override {
      #   cores = with libretro; [
      #     fceumm
      #     gambatte
      #     mgba
      #     snes9x
      #   ];
      # })
    ]
  );
}

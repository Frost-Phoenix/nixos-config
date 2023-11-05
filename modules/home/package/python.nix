{pkgs, ...}: let
  my-python-packages = ps:
    with ps; [
      pandas

      requests
    ];
in {
  environment.systemPackages = [
    (pkgs.python3.withPackages my-python-packages)
  ];
}

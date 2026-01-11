{
  lib,
  buildGoModule,
  fetchFromGitHub,
  ...
}:

buildGoModule rec {
  pname = "pomo";
  version = "0.9.0";

  src = fetchFromGitHub {
    owner = "Bahaaio";
    repo = "pomo";
    rev = "v${version}";
    hash = "sha256-SHyabHtyHYKONJ0VAEf1jAC6WwLflQajaqvnQ2ruLIA=";
  };

  vendorHash = "sha256-8YZb5whAlB/sQ/Lpdku/IFbbKttoFZnmy5nGwOjJA0Y=";

  ldflags = [
    "-s"
    "-w"
  ];

  meta = with lib; {
    description = "Customizable TUI Pomodoro timer with ASCII art, progress bar, and desktop notifications.";
    homepage = "https://github.com/Bahaaio/pomo";
    license = licenses.mit;
    mainProgram = "pomo";
  };
}

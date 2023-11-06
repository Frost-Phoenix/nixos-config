{ config, pkgs, ... }:
{
 	programs.bat = {
		enable = true;
		config = {
			theme = "Dracula";
			italic-text = "always";
		};
	};
}
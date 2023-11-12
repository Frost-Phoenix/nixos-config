{ 
    custom ? {
        font = "JetBrainsMono Nerd Font";
        fontsize = "12";
        primary_accent = "cba6f7";
        secondary_accent = "89b4fa";
        tertiary_accent = "f5f5f5";
        background = "11111B";
        opacity = ".85";
        cursor = "Numix-Cursor";
    },
    ... 
}:
{
  programs.waybar.style = ''
    * {
        border: none;
        border-radius: 0px;
        font-family: ${custom.font};
        font-weight: bold;
        font-size: 16px;
        min-height: 0;
    }

    window#waybar {
        background: none;
    }

    #workspaces {
        background: #${custom.palette.tertiary_background_hex};
        margin: 5px 5px;
        padding: 8px 5px;
        border-radius: 16px;
        color: #${custom.primary_accent}
    }
    #workspaces button {
        padding: 0px 5px;
        margin: 0px 3px;
        border-radius: 16px;
        color: transparent;
        background: ${custom.palette.primary_background_rgba};
        transition: all 0.3s ease-in-out;
    }

    #workspaces button.active {
        background-color: #${custom.secondary_accent};
        color: #${custom.background};
        border-radius: 16px;
        min-width: 50px;
        background-size: 400% 400%;
        transition: all 0.3s ease-in-out;
    }

    #workspaces button:hover {
        background-color: #${custom.tertiary_accent};
        color: #${custom.background};
        border-radius: 16px;
        min-width: 50px;
        background-size: 400% 400%;
    }

    #tray, #pulseaudio, #network,
    #custom-playerctl.backward, #custom-playerctl.play, #custom-playerctl.foward{
        background: #${custom.palette.tertiary_background_hex};
        font-weight: bold;
        margin: 5px 0px;
    }
    #tray, #pulseaudio, #network {
        color: #${custom.tertiary_accent};
        border-radius: 10px 24px 10px 24px;
        padding: 0 20px;
        margin-left: 7px;
    }
    #clock {
        color: #${custom.tertiary_accent};
        background: #${custom.palette.tertiary_background_hex};
        border-radius: 0px 0px 0px 40px;
        padding: 10px 10px 15px 25px;
        margin-left: 7px;
        font-weight: bold;
        font-size: 18px;
    }
    #custom-launcher {
        color: #${custom.secondary_accent};
        background: #${custom.palette.tertiary_background_hex};
        border-radius: 0px 0px 40px 0px;
        margin: 0px;
        padding: 0px 35px 0px 15px;
        font-size: 28px;
    }

    #custom-playerctl.backward, #custom-playerctl.play, #custom-playerctl.foward {
        background: #${custom.palette.tertiary_background_hex};
        font-size: 22px;
    }
    #custom-playerctl.backward:hover, #custom-playerctl.play:hover, #custom-playerctl.foward:hover{
        color: #${custom.tertiary_accent};
    }
    #custom-playerctl.backward {
        color: #${custom.primary_accent};
        border-radius: 24px 0px 0px 10px;
        padding-left: 16px;
        margin-left: 7px;
    }
    #custom-playerctl.play {
        color: #${custom.secondary_accent};
        padding: 0 5px;
    }
    #custom-playerctl.foward {
        color: #${custom.primary_accent};
        border-radius: 0px 10px 24px 0px;
        padding-right: 12px;
        margin-right: 7px
    }
    #window{
        background: #${custom.palette.tertiary_background_hex};
        padding-left: 15px;
        padding-right: 15px;
        border-radius: 16px;
        margin-top: 5px;
        margin-bottom: 5px;
        font-weight: normal;
        font-style: normal;
    }
  '';
}

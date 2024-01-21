{ 
    custom ? {
        font = "JetBrainsMono Nerd Font";
        fontsize = "12";
        primary_accent = "cba6f7";
        secondary_accent = "89b4fa";
        tertiary_accent = "cdd6f4";
        background = "11111B";
        opacity = ".98";
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
        font-size: 15px;
        min-height: 0;
        opacity: ${custom.opacity};
    }

    window#waybar {
        background: none;
    }

    #workspaces {
        background: #${custom.palette.tertiary_background_hex};
        margin: 5px 5px;
        padding: 8px 12px;
        border-radius: 12px 12px 24px 24px;
        color: #${custom.primary_accent}
    }
    #workspaces button {
        padding: 0px 5px;
        margin: 0px 3px;
        border-radius: 15px;
        color: #${custom.background};
        background: #${custom.secondary_accent};
        transition: all 0.2s ease-in-out;
    }

    #workspaces button.active {
        background-color: #${custom.primary_accent};
        color: #${custom.background};
        border-radius: 15px;
        min-width: 35px;
        background-size: 200% 200%;
        transition: all 0.2s ease-in-out;
    }

    #workspaces button:hover {
        background-color: #b4befe;
        color: #${custom.background};
        border-radius: 15px;
        min-width: 35px;
        background-size: 200% 200%;
    }

    #tray, #pulseaudio, #network, #cpu, #memory, #disk,
    #custom-playerctl.backward, #custom-playerctl.play, #custom-playerctl.forward{
        background: #${custom.palette.tertiary_background_hex};
        font-weight: bold;
        margin: 5px 0px;
    }

    #cpu {
        color: #${custom.tertiary_accent};
        border-radius: 10px 0px 0px 24px;
        padding-left: 15px;
        padding-right: 9px;
        margin-left: 7px;
    }
    #memory {
        color: #${custom.tertiary_accent};
        border-radius: 0px 0 0px 0px;      
        padding-left: 9px;
        padding-right: 9px;
    }
    #disk {
        color: #${custom.tertiary_accent};
        border-radius: 0px 24px 10px 0px;      
        padding-left: 9px;
        padding-right: 15px;
    }

    #tray {
        color: #${custom.tertiary_accent};
        border-radius: 10px 24px 10px 24px;
        padding: 0 20px;
        margin-left: 7px;
    }

    #pulseaudio {
        color: #${custom.tertiary_accent};
        border-radius: 10px 0px 0px 24px;
        padding-left: 15px;
        padding-right: 9px;
        margin-left: 7px;
    }
    #network {
        color: #${custom.tertiary_accent};
        border-radius: 0px 24px 10px 0px;      
        padding-left: 9px;
        padding-right: 15px;
    }
    
    #clock {
        color: #${custom.tertiary_accent};
        background: #${custom.palette.tertiary_background_hex};
        border-radius: 0px 0px 0px 40px;
        padding: 10px 10px 15px 25px;
        margin-left: 7px;
        font-weight: bold;
        font-size: 16px;
    }
    #custom-launcher {
        color: #${custom.secondary_accent};
        background: #${custom.palette.tertiary_background_hex};
        border-radius: 0px 0px 40px 0px;
        margin: 0px;
        padding: 0px 30px 0px 10px;
        font-size: 28px;
    }

    #custom-playerctl.backward, #custom-playerctl.play, #custom-playerctl.forward {
        background: #${custom.palette.tertiary_background_hex};
        font-size: 22px;
    }
    #custom-playerctl.backward:hover, #custom-playerctl.play:hover, #custom-playerctl.forward:hover{
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
    #custom-playerctl.forward {
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

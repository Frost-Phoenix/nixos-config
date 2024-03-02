{ ... }:
let custom = {
    font = "JetBrainsMono Nerd Font";
    font_size = "15px";
    font_weight = "bold";
    text_color = "#cdd6f4";
    secondary_accent= "89b4fa";
    tertiary_accent = "f5f5f5";
    background = "11111B";
    opacity = "0.98";
};
in 
{
  programs.waybar.style = ''

    * {
        border: none;
        border-radius: 0px;
        padding: 0;
        margin: 0;
        min-height: 0px;
        font-family: ${custom.font};
        font-weight: ${custom.font_weight};
        font-size: ${custom.font_size};
        color: ${custom.text_color};
        opacity: ${custom.opacity};
    }

    window#waybar {
        background: none;
    }

    #workspaces {
    }
    #workspaces button {
    }
    #workspaces button.active {
    }
    #workspaces button:hover {
    }

    #cpu {
        padding-left: 15px;
        padding-right: 9px;
        margin-left: 7px;
    }
    #memory {
        padding-left: 9px;
        padding-right: 9px;
    }
    #disk {
        padding-left: 9px;
        padding-right: 15px;
    }

    #tray {
        padding: 0 20px;
        margin-left: 7px;
    }

    #pulseaudio {
        padding-left: 15px;
        padding-right: 9px;
        margin-left: 7px;
    }
    #network {
        padding-left: 9px;
        padding-right: 15px;
    }
    
    #clock {
        padding-left: 9px;
        padding-right: 15px;
    }
    #custom-launcher {
        margin-left: 10px;
        font-size: 22px;
    }
  '';
}

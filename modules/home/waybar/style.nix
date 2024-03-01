{ custom, ... }:
{
  programs.waybar.style = ''
    * { all: initial; }

    * {
        border: none;
        border-radius: 0px;
        padding: 0;
        margin: 0;
        min-height: 0px;
        font-family: ${custom.font};
        font-weight: bold;
        font-size: 15px;
        opacity: ${custom.opacity};
    }

    window#waybar {
        background: rgba(24, 24, 37, 0.5);
    }

    #workspaces {
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

    #tray, #pulseaudio, #network, #cpu, #memory, #disk, #clock, custom-launcher {
        color: #${custom.tertiary_accent};
        font-weight: bold;
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

    #window{
        background: #${custom.palette.tertiary_background_hex};
    }
  '';
}

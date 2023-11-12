{ ... }:
{
  programs.waybar.settings.mainBar = {
    position= "top";
    layer= "top";
    height= 35;
    margin-top= 0;
    margin-bottom= 0;
    margin-left= 0;
    margin-right= 0;
    modules-left= [
        "custom/launcher" 
        "custom/playerctl#backward" 
        "custom/playerctl#play" 
        "custom/playerctl#foward" 
        "custom/playerlabel"
    ];
    modules-center= [
        "cava#left"
        "hyprland/workspaces"
        "cava#right"
    ];
    modules-right= [
        "tray" 
        "pulseaudio" 
        "network"
        "clock" 
    ];
    clock= {
        format = " {:%a, %d %b, %I:%M %p}";
        tooltip= "true";
        tooltip-format= "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
        format-alt= " {:%d/%m}";
    };
    "wlr/workspaces"= {
        active-only= false;
        all-outputs= false;
        disable-scroll= false;
        on-scroll-up= "hyprctl dispatch workspace e-1";
        on-scroll-down= "hyprctl dispatch workspace e+1";
        format = "{name}";
        on-click= "activate";
        format-icons= {
            urgent= "";
            active= "";
            default = "";
            sort-by-number= true;
        };
    };
    "cava#left" = {
        framerate = 60;
        autosens = 1;
        bars = 18;
        lower_cutoff_freq = 50;
        higher_cutoff_freq = 10000;
        method = "pipewire";
        source = "auto";
        stereo = true;
        reverse = false;
        bar_delimiter = 0;
        monstercat = false;
        waves = false;
        input_delay = 2;
        format-icons = [ 
          "<span foreground='#${custom.primary_accent}'>▁</span>" 
          "<span foreground='#${custom.primary_accent}'>▂</span>" 
          "<span foreground='#${custom.primary_accent}'>▃</span>" 
          "<span foreground='#${custom.primary_accent}'>▄</span>" 
          "<span foreground='#${custom.secondary_accent}'>▅</span>" 
          "<span foreground='#${custom.secondary_accent}'>▆</span>" 
          "<span foreground='#${custom.secondary_accent}'>▇</span>" 
          "<span foreground='#${custom.secondary_accent}'>█</span>" 
        ];
    };
    "cava#right" = {
        framerate = 60;
        autosens = 1;
        bars = 18;
        lower_cutoff_freq = 50;
        higher_cutoff_freq = 10000;
        method = "pipewire";
        source = "auto";
        stereo = true;
        reverse = false;
        bar_delimiter = 0;
        monstercat = false;
        waves = false;
        input_delay = 2;
        format-icons = [ 
          "<span foreground='#${custom.primary_accent}'>▁</span>" 
          "<span foreground='#${custom.primary_accent}'>▂</span>" 
          "<span foreground='#${custom.primary_accent}'>▃</span>" 
          "<span foreground='#${custom.primary_accent}'>▄</span>" 
          "<span foreground='#${custom.secondary_accent}'>▅</span>" 
          "<span foreground='#${custom.secondary_accent}'>▆</span>" 
          "<span foreground='#${custom.secondary_accent}'>▇</span>" 
          "<span foreground='#${custom.secondary_accent}'>█</span>" 
        ];
    };
    "custom/playerctl#backward"= {
        format= "󰙣 "; 
        on-click= "playerctl previous";
        on-scroll-up = "playerctl volume .05+";
        on-scroll-down = "playerctl volume .05-";
    };
    "custom/playerctl#play"= {
        format= "{icon}";
        return-type= "json";
        exec= "playerctl -a metadata --format '{\"text\": \"{{artist}} - {{markup_escape(title)}}\", \"tooltip\": \"{{playerName}} : {{markup_escape(title)}}\", \"alt\": \"{{status}}\", \"class\": \"{{status}}\"}' -F";
        on-click= "playerctl play-pause";
        on-scroll-up = "playerctl volume .05+";
        on-scroll-down = "playerctl volume .05-";
        format-icons= {
            Playing = "<span>󰏥 </span>";
            Paused = "<span> </span>";
            Stopped = "<span> </span>";
        };
    };
    "custom/playerctl#foward"= {
        format= "󰙡 ";
        on-click= "playerctl next";
        on-scroll-up = "playerctl volume .05+";
        on-scroll-down = "playerctl volume .05-";
    };
    "custom/playerlabel"= {
        format= "<span>󰎈 {} 󰎈</span>";
        return-type= "json";
        max-length= 40;
        exec = "playerctl -a metadata --format '{\"text\": \"{{artist}} - {{markup_escape(title)}}\", \"tooltip\": \"{{playerName}} : {{markup_escape(title)}}\", \"alt\": \"{{status}}\", \"class\": \"{{status}}\"}' -F";
        on-click= "";
    };
    
    memory= {
        format= "󰍛 {}%";
        format-alt= "󰍛 {used}/{total} GiB";
        interval= 5;
    };
    cpu= {
        format= "󰻠 {usage}%";
        format-alt= "󰻠 {avg_frequency} GHz";
        interval= 5;
    };
    network = {
        format-wifi = "  {signalStrength}%";
        format-ethernet = "󰈀 100% ";
        tooltip-format = "Connected to {essid} {ifname} via {gwaddr}";
        format-linked = "{ifname} (No IP)";
        format-disconnected = "󰖪 0% ";
    };
    tray= {
        icon-size= 20;
        spacing= 8;
    };
    pulseaudio= {
        format= "{icon} {volume}%";
        format-muted= "󰝟";
        format-icons= {
            default= ["󰕿" "󰖀" "󰕾"];
        };
        # on-scroll-up= "bash ~/.scripts/volume up";
        # on-scroll-down= "bash ~/.scripts/volume down";
        scroll-step= 5;
        on-click= "pavucontrol";
    };
    "custom/randwall"= {
        format= "󰏘";
        # on-click= "bash $HOME/.config/hypr/randwall.sh";
        # on-click-right= "bash $HOME/.config/hypr/wall.sh";
    };
    "custom/launcher"= {
        format= "";
        # on-click= "bash $HOME/.config/rofi/launcher.sh";
        # on-click-right= "bash $HOME/.config/rofi/run.sh"; 
        tooltip= "false";
    };
  };
}

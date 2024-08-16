{ pkgs, ... }: 
{
  home.packages = (with pkgs; [ rofi-wayland ]);

  home.file.".config/rofi/theme.rasi".text = ''
    * {
      bg-col: #282828;
      bg-col-light: #1D2021;
      border-col: #1D2021;
      selected-col: #3C3836;
      green: #98971A;
      fg-col: #FBF1C7;
      fg-col2: #EBDBB2;
      grey: #BDAE93;
    }
  '';

  home.file.".config/rofi/config.rasi".text = ''
    configuration{
      modi: "run,drun,window";
      lines: 5;
      font: "JetBrainsMono Nerd Font 15";
      show-icons: true;
      icon-theme: "Papirus-dark";
      terminal: "kitty";
      drun-display-format: "{icon} {name}";
      location: 0;
      disable-history: true;
      hide-scrollbar: true;
      display-drun: " Apps ";
      display-run: " Run ";
      display-window: " Window ";
      /* display-Network: " Network"; */
      sidebar-mode: true;
      sorting-method: "fzf";
    }

    @theme "theme"

    element-text, element-icon , mode-switcher {
      background-color: inherit;
      text-color:       inherit;
    }

    window {
      height: 460px;
      width: 400px;
      border: 3px;
      border-color: @border-col;
      background-color: @bg-col;
    }

    mainbox {
      background-color: @bg-col;
    }

    inputbar {
      children: [prompt,entry];
      background-color: @bg-col;
      border-radius: 5px;
      padding: 0px;
    }

    prompt {
      background-color: @green;
      padding: 4px;
      text-color: @bg-col;
      border-radius: 2px;
      margin: 10px 0px 0px 10px;
    }

    textbox-prompt-colon {
      expand: false;
      str: ":";
    }

    entry {
      padding: 6px;
      margin: 10px 0px 0px 5px;
      text-color: @fg-col;
      background-color: @bg-col;
    }

    listview {
      border: 0px 0px 0px;
      padding: 6px 0px 0px;
      margin: 10px 0px 0px 6px;
      columns: 1;
      background-color: @bg-col;
    }

    element {
      padding: 8px;
      margin: 0px 10px 4px 4px;
      background-color: @bg-col;
      text-color: @fg-col  ;
    }

    element-icon {
      size: 28px;
    }

    element selected {
      background-color:  @selected-col ;
      text-color: @fg-col2  ;
      border-radius: 2px;
    }

    mode-switcher {
        spacing: 0;
      }

    button {
      padding: 5px;
      background-color: @bg-col-light;
      text-color: @grey;
      vertical-align: 0.5; 
      horizontal-align: 0.5;
    }

    button selected {
      background-color: @bg-col;
      text-color: @green;
    }
  '';  
}

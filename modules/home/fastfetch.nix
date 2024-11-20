{ pkgs, ... }:
{
  home.packages = (with pkgs; [ fastfetch ]);

  xdg.configFile."fastfetch/config.jsonc".text = ''
    {
      "$schema": "https://github.com/fastfetch-cli/fastfetch/raw/dev/doc/json_schema.json",
      "logo": {
        "source": "${../../.github/assets/logo/nixos-logo.png}",
        "type": "kitty-direct",
        "width": 33,
        "padding": {
          "top": 2
        }
      },
      "display": {
        "separator": "",
        "size": {
            "binaryPrefix": "si",
          "ndigits": 0
        },
        "percent": {
          "type": 1
        },
        "key":{
         "Width": 1
         },
      },
      "modules": [
        {
          "type": "title",
          "color": {
            "user": "35",
            "host": "36"
          }
        },
        {
          "type": "separator",
          "string": "▔"
        },
        {
          "type": "os",
          "key": "╭─ ",
          "format": "{3} ({12})",
          "keyColor": "32"
        },
        {
          "type": "host",
          "key": "├─󰟀 ",
          "keyColor": "32"
        },
        {
          "type": "kernel",
          "key": "├─󰒔 ",
          "format": "{1} {2}",
          "keyColor": "32"
        },
        {
          "type": "shell",
          "key": "├─$ ",
          "format": "{1} {4}",
          "keyColor": "32"
        },
        {
          "type": "packages",
          "key": "├─ ",
          "keyColor": "32"
        },
        {
          "type": "uptime",
          "key": "╰─󰔚 ",
          "keyColor": "32"
        },
        "break",
       /* {
          "type": "cpu",
          "key": "╭─ ",
          "keyColor": "34",
          "freqNdigits": 1
        },
        {
          "type": "gpu",
          "key": "├─󰢮 ",
          "format": "{1} {2} ({3})",
          "keyColor": "34"
        },
        {
          "type": "sound",
          "key": "├─󰓃 ",
          "format": "{2}",
          "keyColor": "34"
        },
        {
          "type": "battery",
          "key": "├─󰁹 ",
          "keyColor": "34"
        },
        {
          "type": "memory",
          "key": "├─ ",
          "keyColor": "34"
        },
        {
          "type": "disk",
          "key": "├─󰋊 ",
          "keyColor": "34"
        },
        {
          "type": "localip",
          "key": "╰─󱦂 ",
          "keyColor": "34",
          "showIpv4": true,
          "compact": true
        },
        "break", */
        {
          "type": "display",
          "key": "╭─󰹑 ",
          "keyColor": "33",
          "compactType": "original"
        },
        {
          "type": "de",
          "key": "├─󰧨 ",
          "keyColor": "33"
        },
        {
          "type": "wm",
          "key": "├─ ",
          "keyColor": "33"
        },
        {
          "type": "theme",
          "key": "├─󰉼 ",
          "keyColor": "33"
        },
        {
          "type": "icons",
          "key": "├─ ",
          "keyColor": "33"
        },
        {
          "type": "cursor",
          "key": "├─󰳽 ",
          "keyColor": "33"
        },
        {
          "type": "font",
          "key": "├─ ",
          "format": "{2}",
          "keyColor": "33"
        },
        {
          "type": "terminal",
          "key": "╰─ ",
          "format": "{3}",
          "keyColor": "33"
        },
        "break",
        {
          "type": "colors",
          "symbol": "block"
        },
      ]
    }
  '';
}

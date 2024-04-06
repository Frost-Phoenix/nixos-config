{ pkgs, ... }: 
{
  programs.micro = {
    enable = true;
    
    settings = {
      "colorscheme" = "catppuccin-mocha";
      "*.nix" = {"tabsize" = 2;};
      "*.ml"  = {"tabsize" = 2;};
      "tabstospaces" = true;
      "tabsize" = 4;
    };
  };

  xdg.configFile."micro/bindings.json".text = ''
    {
      "Ctrl-Up": "CursorUp,CursorUp,CursorUp,CursorUp,CursorUp",
      "Ctrl-Down": "CursorDown,CursorDown,CursorDown,CursorDown,CursorDown",
      "Ctrl-Backspace": "DeleteWordLeft",
      "Ctrl-Delete": "DeleteWordRight",
      "CtrlShiftUp": "ScrollUp,ScrollUp,ScrollUp,ScrollUp,ScrollUp",
      "CtrlShiftDown": "ScrollDown,ScrollDown,ScrollDown,ScrollDown,ScrollDown"
    }
  '';

  xdg.configFile."micro/colorschemes/catppuccin-mocha.micro".text = ''
    color-link comment "#585B70"

    color-link identifier "#89B4FA"
    color-link identifier.class "#89B4FA"
    color-link identifier.var "#89B4FA"

    color-link constant "#FAB387"
    color-link constant.number "#FAB387"
    color-link constant.string "#A6E3A1"

    color-link symbol "#F5C2E7"
    color-link symbol.brackets "#F2CDCD"
    color-link symbol.tag "#89B4FA"

    color-link type "#89B4FA"
    color-link type.keyword "#F9E2AF"

    color-link special "#F5C2E7"
    color-link statement "#CBA6F7"
    color-link preproc "#F5C2E7"

    color-link underlined "#89DCEB"
    color-link error "bold #F38BA8"
    color-link todo "bold #F9E2AF"

    color-link diff-added "#A6E3A1"
    color-link diff-modified "#F9E2AF"
    color-link diff-deleted "#F38BA8"

    color-link gutter-error "#F38BA8"
    color-link gutter-warning "#F9E2AF"

    color-link statusline "#CDD6F4,#181825"
    color-link tabbar "#CDD6F4"
    color-link indent-char "#45475A"
    color-link line-number "#45475A"
    color-link current-line-number "#B4BEFE"

    color-link color-column "#313244"
    color-link type.extended "default"

  '';
}
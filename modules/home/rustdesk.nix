{ pkgs, ... }: 
{
  home.packages = (with pkgs; [ rustdesk-flutter ]);
}

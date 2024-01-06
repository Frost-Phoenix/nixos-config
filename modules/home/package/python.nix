{pkgs, ...}: 
{
  environment.systemPackages = with pkgs; [
    (python311Full.withPackages(ps: with ps; [ 
      requests
      pygame
      shapely
      
      # github-email-explorer
      Jinja2
      MarkupSafe
      python-
      requests
      sendgrid
      tabulate
    ]))
  ];
}

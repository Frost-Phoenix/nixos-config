{pkgs, ...}: 
{
  environment.systemPackages = with pkgs; [
    (python311Full.withPackages(ps: with ps; [ 
      requests
      pygame
      shapely
      
      # github-email-explorer
      jinja2
      markupSafe
      python-
      requests
      sendgrid
      tabulate
    ]))
  ];
}

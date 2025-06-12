{ config, pkgs, ...}:

{
  home.file.".xinitrc" = {
    text = ''
    #!/bin/sh
      exec bspwm
    '';
    executable = true;
  };
}

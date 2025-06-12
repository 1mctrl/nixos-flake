{ config, pkgs, ... }:

{
  services.mako = {
    enable = true;
    backgroundColor = "#1e1e2e";
    textColor = "#cdd6f4";
    borderColor = "#89b4fa";
    defaultTimeout = 5000;

    extraConfig = ''
      [urgency=low]
      background-color=#1e1e2e
      text-color=#cdd6f4
      border-color=#89b4fa

      [urgency=normal]
      background-color=#1e1e2e
      text-color=#cdd6f4
      border-color=#89b4fa

      [urgency=critical]
      background-color=#1e1e2e
      text-color=#f38ba8
      border-color=#f38ba8
    '';
  };
}

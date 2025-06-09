{ config, lib, pkgs, ... }:

{
  options.services.fingerprint = {
    enable = lib.mkEnableOption "Enable fingerprint reader support with python-validity";
  };

  config = lib.mkIf config.services.fingerprint.enable {
    services.dbus.enable = true;

    services.fprintd.enable = true;

    services.python-validity.enable = true;

    services.open-fprintd.enable = true;

    security.pam = {
      services = {
        login.fprintAuth = true;
        sudo.fprintAuth = true;
        gdm.fprintAuth = true;
      };
    };
  };
}

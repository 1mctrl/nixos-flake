{
  services.thinkfan.enable = true;
  services.thinkfan.extraConfig = ''
    sensor /sys/class/hwmon/hwmon0/temp1_input
    (0, 0, 55)
    (1, 48, 60)
    (2, 55, 65)
    (3, 60, 70)
    (4, 65, 75)
    (5, 70, 80)
    (7, 75, 32767)
  '';
  boot.kernelModules = [ "thinkpad_acpi" ];
  boot.extraModprobeConfig = ''
    options thinkpad_acpi fan_control=1
  '';
}

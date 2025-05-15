{ config, lib, pkgs, ... }:

{
  options.mySystem.enableMySQL = lib.mkEnableOption "Enable MySQL server with default config";

  config = lib.mkIf config.mySystem.enableMySQL {
    services.mysql = {
      enable = true;
      package = pkgs.mysql80;
      bind = "127.0.0.1";
      port = 3306;

      settings.mysqld = {
        user = "atlas";
        max_connections = 100;
        sql_mode = "STRICT_ALL_TABLES";
      };

      initialScript = pkgs.writeText "init.sql" ''
        CREATE USER 'atlas'@'localhost' IDENTIFIED BY '74960';
        GRANT ALL PRIVILEGES ON *.* TO 'atlas'@'localhost' WITH GRANT OPTION;
        FLUSH PRIVILEGES;
      '';
    };

    environment.etc."my.cnf".text = ''
      [client]
      host=localhost
      user=atlas
      password=74960

      [mysql]
      no-auto-rehash

      [pager]
      pager=/usr/bin/less
    '';
  };
}

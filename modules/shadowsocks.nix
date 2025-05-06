{ config, pkgs, ... }:

{
environment.etc."shadowsocks/ss-local.json".text = ''
{
"server": "162.19.274.71",
"server_port": 443,
"local_address": "127.0.0.1",
"local_port": 1080,
"password": "i_belive_in_atlas_supermacy",
"timeout": 300,
"method": "chacha20-ietf-poly1305",
}
'';

environment.etc."proxychains.conf".text = ''
       strict_chain
       # localnet 127.0.0.0/255.0.0.0
       socks5 127.0.0.1 1080
  '';

systemd.services.ss-local = {
description = "Shadowsocks Local Client";
wantedBy = [ "multi-user.target" ];
after = [ "network.target" ];
enable = true;
serviceConfig = {
ExecStart = "${pkgs.shadowsocks-libev}/bin/ss-local -c /etc/shadowsocks/ss-local.json -v";
Restart = "on-failure";
};
};
}

{ lib, ... }:

{
  options.system.defaults.localNetwork = {
    AllowedEthernetLocalNetworkAddresses = lib.mkOption {
      type = lib.types.nullOr (lib.types.listOf lib.types.str);
      default = null;
      example = [ "192.168.0.0/16" ];
      description = ''
        List of networks to exempt from local network restrictions on wired
        Ethernet interfaces. The system treats every address on that network as
        if it were not a local network address. Every program can access that
        address, regardless of its Local Network privilege state.
      '';
    };

    AllowedWiFiLocalNetworkAddresses = lib.mkOption {
      type = lib.types.nullOr (lib.types.listOf lib.types.str);
      default = null;
      example = [ "192.168.0.0/16" ];
      description = ''
        List of networks to exempt from local network restrictions on Wi-Fi
        interfaces. The system treats every address on that network as if it
        were not a local network address. Every program can access that
        address, regardless of its Local Network privilege state.
      '';
    };
  };
}

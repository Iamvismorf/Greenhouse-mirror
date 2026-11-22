{
  modules.nixos.misc_steam = {pkgs, ...}: {
    environment.systemPackages = [
      pkgs.mangohud
      pkgs.protonup-ng
    ];

    programs.gamemode.enable = true;

    programs.steam = {
      enable = true;
      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall = true;
      localNetworkGameTransfers.openFirewall = true;
      gamescopeSession.enable = true;
    };

    hardware.graphics = {
      enable = true;
      enable32Bit = true;
    };
  };
}

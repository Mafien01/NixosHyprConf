{ pkgs, lib, ...}: {
  systemd.user.enable = true;

  systemd.user.services.cliphist-wipe-on-boot = {
    description = "wipe cliphist on boot";
    serviceConfig  = {
          Type = "oneshot";
          ExecStart = "${lib.getExe pkgs.cliphist} wipe";
    };
  };

  systemd.user.timers.cliphist-wipe-on-boot = {
    description = "timer to wipe cliphist once after boot";
    install = {
      WantedBy = [ "timers.target" ];
    };
    timerConfig = {
        OnBootSec = "10s";
        Persistent = false;
    };
    unit = "cliphist-wipe-on-boot.service";
  };

  systemd.user.services.cliphist-session-watcher = {
    description = "clipboard hystory watcher for current session";
    after  = { "graphical-session.target" = [ ]; };
    install = {
      WantedBy = [ "graphical-session.target" ];
    };
    serviceConfig = {
      Type = "exec";
      ExecStart = "${lib.getExe pkgs.wl-clipboard} --type text --watch ${lib.getExe pkgs.cliphist} store";
      Restart = "on-failure";
      RestartSec = 5;

    };
  };

  home.packages = with pkgs;
  [
    cliphist
    wl-clipboard
  ];
}

{ inputs, ... }: {

  imports = [ inputs.hyprpanel.homeManagerModules.hyprpanel ];

  programs.hyprpanel = {
    enable = true;
    systemd.enable = true;
    overwrite.enable = true;


    settings = {

      theme = {
        name = "catppuccin_mocha";
        bar.transparent = true;
        font = {
          name = "Fira Code";
          size = "16px";
        };

        # Scaling
        bar.menus.menu.battery.scaling = 90;
        bar.menus.menu.bluetooth.scaling = 90;
        bar.menus.menu.clock.scaling = 90;
        bar.menus.menu.dashboard.confirmation_scaling = 90;
        bar.menus.menu.dashboard.scaling = 90;
        bar.menus.menu.media.scaling = 90;
        bar.menus.menu.network.scaling = 90;
        bar.menus.menu.notifications.scaling = 90;
        bar.menus.menu.power.scaling =  90;
        bar.menus.menu.volume.scaling = 90;
        bar.menus.popover.scaling = 90;
        bar.scaling = 90;
        notification.scaling = 90;
        osd.scaling = 90;
        tooltip.scaling = 90;
      };
      scalingPriority = "hyprland";

      layout = {
        "bar.layouts" = {
          "0" = {
            left = [ "dashboard" "workspaces" ];
            middle = [ "media" ];
            right = [ "volume" "systray" "clock" "notifications" ];
          };
        };
      };

      bar = {
        launcher.autoDetectIcon = true;
        workspaces.show_numbered= true;
        clock.format = "%Y/%m/%d %H:%M:%S";
      };

      menus = {
        clock = {
          time = {
            military = true;
            hideSeconds = true;
          };
          weather.unit = "metric";
        };

        dashboard = {
          directories.enabled = false;
          stats.enable_gpu = true;
          powermenu.avatar.image = "${./avatar.jpg}";

          shortcuts = {
            left = {
              shortcut1 = {
                tooltip = "firefox";
                icon = "󰈹";
                command = "firefox";
              };
              shortcut2 = {
                tooltip = "discord";
                icon = "";
                command = "vesktop";
              };
              shortcut3 = {
                tooltip = "Prism Launcher";
                icon = "󰍳";
                command = "prismlauncher";
              };
              shortcut4 = {
                tooltip = "Search Apps";
                icon = "";
                command = "rofi -show drun";
              };
            };

            right = {
              shortcut1 = {
                tooltip = "pwvucontrol";
                icon = "";
                command = "pwvucontrol";
              };
              shortcut3 = {
                tooltip = "Color Picker";
                icon = "";
                command = "sleep 0.3 && hyprpicker -a";
              };
            };
          };
        };
      };
    };
  };
}

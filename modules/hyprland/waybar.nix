{...}: let
  common = {
    layer = "top";
    position = "top";
    spacing = 4;
    reload_style_on_change = true;

    modules-left = ["hyprland/workspaces"];
    modules-center = ["clock"];
    modules-right = [
      "temperature"
      "battery"
    ];

    "hyprland/workspaces" = {
      format = "{name}";
      sort-by-number = true;
      on-click = "activate";
    };

    clock = {
      format = "{:%H:%M}";
      tooltip-format = "{:%A, %d %B %Y}";
    };

    temperature = {
      format = "{temperatureC}°";
      critical-threshold = 80;
      tooltip = false;
    };

    battery = {
      bat = "BAT1";
      interval = 30;
      format = "{capacity}%";
      format-charging = "+{capacity}%";
      format-plugged = "{capacity}%";
      tooltip-format = "{timeTo}";
      states = {
        warning = 30;
        critical = 15;
      };
    };
  };
in {
  programs.waybar = {
    enable = true;
    systemd.enable = true;

    settings = {
      laptopBar =
        common
        // {
          name = "laptop";
          output = ["eDP-1"];
          height = 28;
          margin = "6 8 0";
        };

      externalBar =
        common
        // {
          name = "external";
          output = ["HDMI-A-1"];
          height = 40;
          margin = "8 12 0";
        };
    };

    style = ./waybar.css;
  };
}

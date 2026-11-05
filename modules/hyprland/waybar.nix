{...}: {
  programs.waybar = {
    enable = true;
    systemd.enable = true;

    settings.mainBar = {
      layer = "top";
      position = "top";

      modules-left = ["hyprland/workspaces"];
      modules-center = ["clock"];
      modules-right = [
        "temperature"
        "battery"
      ];

      battery = {
        bat = "BAT1";
        interval = 30;
        format = "BAT {capacity}%";
        format-charging = "BAT {capacity}% charging";
        format-plugged = "BAT {capacity}% plugged";
        tooltip-format = "{timeTo}";
        states = {
          warning = 30;
          critical = 15;
        };
      };
    };

    style = ./waybar.css;
  };
}

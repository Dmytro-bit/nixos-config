{ pkgs, ... }:
{
  home.packages = with pkgs; [
  	kitty
  ];

  programs.kitty.enable = true;
  wayland.windowManager.hyprland = {
    enable = true;
    package=null;
    settings = {
      "$mod" = "SUPER";
      terminal = "kitty";

      bind = [
        "$mod, Return, exec, $terminal"
        "$mod, D, exec, $menu"
        "$mod SHIFT, Q, killactive"
        "$mod SHIFT, E, exit"
        "$mod, F, exec, firefox"
        "$mod, V, togglefloating"
      ];
    };
  };
}

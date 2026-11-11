{...}: let 
    wallpaper = ./wallpapers/jupiter.png;     
in {
    services.hyprpaper = {
      enable = true;

      settings = {
        splash = false;

        wallpaper = [
          {
            monitor = "";
            path = "${wallpaper}";
            fit_mode = "cover";
          }
        ];
      };
    };
}

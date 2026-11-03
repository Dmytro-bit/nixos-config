{...}:{
   programs.waybar = {
     enable = true;
     systemd.enable = true;

     settings.mainBar ={
        layer = "top";
	position = "top";

        modules-left = ["hyprland/workspaces"];
        modules-center = ["clock"];
        modules-right = ["temperature"];
     };

     style = ./waybar.css;
   };
}

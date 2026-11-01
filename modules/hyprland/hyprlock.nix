{...}: {
  programs.hyprlock = {
    enable = true;
    settings = {
      general = {
        disable_loading_bar = true;
        hide_cursor = true;
      };

      background = {
        monitor = "";
        color = "rgb(1e1e2e)";
      };

      label = {
        monitor = "";
        text = ''cmd[update:1000] date +"%H:%M"'';
        color = "rgb(cdd6f4)";
        font_size = 72;
        position = "0, 120";
        halign = "center";
        valign = "center";
      };

      input-field = {
        monitor = "";
        size = "300, 50";
        position = "0, -40";
        halign = "center";
        valign = "center";
        outline_thickness = 2;
        dots_size = 0.25;
        dots_spacing = 0.3;
        outer_color = "rgb(89b4fa)";
        inner_color = "rgb(313244)";
        font_color = "rgb(cdd6f4)";
        fade_on_empty = false;
        placeholder_text = "<i>Password...</i>";
        fail_text = "<i>Authentication failed</i>";
      };
    };
  };
}

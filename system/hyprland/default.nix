{ pkgs, ... }:
{
  programs.hyprland.enable = true;

  # Provide a freedesktop Secret Service implementation for applications in
  # the Hyprland session and unlock the login keyring through SDDM's PAM stack.
  services.gnome.gnome-keyring.enable = true;
  security.pam.services.sddm.enableGnomeKeyring = true;

  environment.systemPackages = with pkgs; [
    libsecret
    seahorse
  ];
}

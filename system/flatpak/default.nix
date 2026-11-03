{pkgs, ...}: {
  # Required for applications distributed through Flatpak, such as GeForce NOW.
  services.flatpak.enable = true;

  systemd.services.geforce-now-flatpak = {
    description = "Install GeForce NOW from NVIDIA's Flatpak repository";
    wantedBy = ["multi-user.target"];
    wants = ["network-online.target"];
    after = ["network-online.target"];

    path = [pkgs.flatpak];
    script = ''
      flatpak remote-add --system --if-not-exists flathub \
        https://dl.flathub.org/repo/flathub.flatpakrepo
      flatpak remote-add --system --if-not-exists GeForceNOW \
        https://international.download.nvidia.com/GFNLinux/flatpak/geforcenow.flatpakrepo
      flatpak install --system --noninteractive --assumeyes \
        GeForceNOW com.nvidia.geforcenow
    '';

    serviceConfig = {
      Type = "oneshot";
      RemainAfterExit = true;
    };
  };
}

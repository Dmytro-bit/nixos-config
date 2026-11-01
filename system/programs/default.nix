{pkgs, ...}: {
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    vim
    alejandra
    grim
    slurp
    wl-clipboard
    mako
    wireguard-tools
    proton-vpn
  ];
}

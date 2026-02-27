{pkgs, ...}:{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    vim
    alejandra
    grim
    slurp
    wl-clipboard
    mako
    pipenv
    python3
    wireguard-tools
    protonvpn-gui
  ];
}

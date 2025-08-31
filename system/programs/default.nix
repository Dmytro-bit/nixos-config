{pkg, ...}:{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    vim
    alejandra
    grim
    slurp
    wl-clipboard
    mako
    jetbrains.pycharm-professional
    pipenv
    python3
  ];
}
{ config, pkgs, ... }:

{
  home.username = "dmytro";
  home.homeDirectory = "/home/dmytro";

  xresources.properties = {
    "Xcursor.size" = 16;
    "Xft.dpi" = 172;
  };

  home.packages = with pkgs; [
    neofetch

    # archives
    zip
    xz
    unzip
    p7zip

    # utils
    ripgrep # recursively searches directories for a regex pattern
    eza # A modern replacement for ‘ls’
    fzf # A command-line fuzzy finder

    # misc
    cowsay
    file
    which
    tree

    # nix related
    #
    # it provides the command `nom` works just like `nix`
    # with more details log output
    nix-output-monitor

    # productivity
    iotop # io monitoring
    iftop # network monitoring

    # system call monitoring
    strace # system call monitoring
    ltrace # library call monitoring
    lsof # list open files

    #programs
    spotify
    discord
    telegram-desktop
    firefox
    vscode
  ];

  # basic configuration of git, please change to your own
  programs.git = {
    enable = true;
    userName = "Dmytro Dziumanenko";
    userEmail = "dziumanenkod@proton.me";
    extraConfig = {
	init.defaultBranch = "main";
	safe.directory = "/etc/nixos";
    };
  };

  # This value determines the home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update home Manager without changing this value. See
  # the home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "25.05";
}

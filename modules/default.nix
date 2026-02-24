{ pkgs, ... }:
{
  imports = [
    ./git
    ./programs
    ./neovim
    ./hyprland
  ];
}

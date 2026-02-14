{ pkgs, ... }:
{
  imports = [
    ./git
    ./programs
    ./neovim
  ];
}

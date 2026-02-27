{ pkgs, ... }:
{
  imports = [
    ./git
    ./programs
    ./neovim
    ./tmux
    ./eza
  ];
}

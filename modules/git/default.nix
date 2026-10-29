{ config, programs, ... }:
{

  home.file.".gitingone/.ignore".text = ''
    .idea/
    .vscode/
  '';

  programs.git = {
    enable = true;
    userName = "dmytro";
    userEmail = "contact@dziumanenko.com";
    extraConfig = {
      init.defaultBranch = "main";
      core.autocrlf = "input";
      core.excludesfile = "${config.home.homeDirectory}/.gitingone/.ignore";
    };
  };
}

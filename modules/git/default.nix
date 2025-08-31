{programs, ...}:{

  programs.git = {
    enable = true;
    userName = "dmytro";
    userEmail = "contact@dziumanenko.com";
    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}
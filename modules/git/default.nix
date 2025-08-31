{programs, ...}:{

  programs.git = {
    enable = true;
    userName = "Dmytro";
    userEmail = "contact@dziumanenko.com";
    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}
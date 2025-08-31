{programs, ...}:{

  programs.git = {
    enable = true;
    userName = "Dmytro Dziumanenko";
    userEmail = "dziumanenkod@gmail.com";
    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}
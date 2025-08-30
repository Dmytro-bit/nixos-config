{programs, ...}:{

  programs.git = {
    enable = true;
    userName = "Dmytro Dziumanenko";
    userEmail = "dziumanenkod@proton.me";
    extraConfig = {
	init.defaultBranch = "main";
	safe.directory = "/etc/nixos";
    };
  };
}
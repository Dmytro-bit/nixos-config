{
  lib,
  config,
  pkgs,
  ...
}: let
  git-flow-next = pkgs.stdenvNoCC.mkDerivation (finalAttrs: {
    pname = "git-flow-next";
    version = "2.1.0";

    src = pkgs.fetchurl {
      url = "https://github.com/gittower/git-flow-next/releases/download/v${finalAttrs.version}/git-flow-next-v${finalAttrs.version}-linux-amd64.tar.gz";
      hash = "sha256-4zW1gY8rL4IMF4RMGUAw0Nt48836m7mZ/LnOCSup7NI=";
    };

    sourceRoot = ".";

    installPhase = ''
      runHook preInstall
      install -Dm755 git-flow "$out/bin/git-flow"
      runHook postInstall
    '';

    meta = {
      description = "Modern, maintained implementation of the Git-flow branching model";
      homepage = "https://git-flow.sh/";
      license = lib.licenses.bsd2;
      platforms = ["x86_64-linux"];
      mainProgram = "git-flow";
    };
  });
in {
  programs.firefox = {
    enable = true;
    profiles.default = {
      path = "llwroys5.default";
      settings."layout.css.devPixelsPerPx" = "0.9";
    };
  };

  home.packages = with pkgs; [
    # archives
    zip
    xz
    unzip
    p7zip

    # utils
    ripgrep # recursively searches directories for a regex pattern
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
    discord
    telegram-desktop
    libreoffice
    zathura
    vlc
    totem

    # Python development
    python314
    uv
    jetbrains.pycharm

    # Git workflow
    git-flow-next
  ];
}

{pkgs, ...}:{
	programs.tmux = {
		enable = true;		
		clock24=true;
		mouse=true;
		shell = "${pkgs.bash}/bin/bash";
		shortcut = "C-Space";
		plugins = with pkgs; [tmuxPlugins.better-mouse-mode];
		

		extraConfig=''
			set -g default-terminal "xterm-256color"
			set -ga terminal-overrides ",*256col*:Tc"
			
		'';
	};

}

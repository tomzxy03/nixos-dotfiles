{config , pkgs, ... }:
{
	home.username = "tomzxy";
	home.homeDirectory = "/home/tomzxy";
	home.stateVersion = "25.05";
	
	programs.bash ={
		enable = true;
		shellAliases = {
			btw = "echo tomzxy is fucking handsome";
			nrs = "sudo  nixos-rebuild switch";
			
			 
		};
	   initExtra = ''
	     export PS1='\[\e[38;5;212;107m\]\u\[\e[0m\] in \[\e[38;5;68m\]\w\[\e[0m\] \\$ '
	   '';
	};

	programs.alacritty = {
		enable=true;
		settings = {
			window.opacity = 0.9;
			font = {
			  normal = {
				family = "JetBrains Mono Nerd Font";
				style = "Regular";
			  };	
			size = 16;
			};
		};

	};
	

	home.file.".config/bat/config".text = ''
		--theme="Nord"
		--style="numbers,changes,grid"
		--paging=auto

	'';
	home.file.".config/qtile".source = /home/tomzxy/nixos-dotfiles/qtile;

	home.packages = with pkgs; [
		bat
		noto-fonts
		noto-fonts-emoji
	

	

	];
}



{pkgs, ...}: {
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting # Disable greeting
      fish_vi_key_bindings
    '';
    shellAliases = with pkgs; {
      cat = "${bat}/bin/bat --paging never ";
      "," = " __copilot_what-the-shell";
      ",g" = " __copilot_git-assist";
      ",gh" = " __copilot_gh-assist";
    };
    plugins = with pkgs.fishPlugins; [
      {
        name = "plugin-git";
        src = plugin-git.src;
      }
      {
        name = "fzf-fish";
        src = fzf-fish.src;
      }
      {
        name = "github-copilot-cli-fish";
        src = github-copilot-cli-fish.src;
      }
    ];
  };
}

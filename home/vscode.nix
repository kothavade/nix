{pkgs, ...}: {
  home.packages = with pkgs; [
    nil
    # nixd
    alejandra
    black
  ];
  programs.vscode = {
    enable = true;
    package = pkgs.vscode;
    enableUpdateCheck = false;
    mutableExtensionsDir = true;
    # extensions are just managed within vscode, nix did not have enough :(
    userSettings = with pkgs; {
      "files.autoSave" = "afterDelay";

      "workbench.colorTheme" = "Min Dark";
      "workbench.iconTheme" = "material-icon-theme";
      "workbench.productIconTheme" = "icons-carbon";
      "workbench.startupEditor" = "none";

      "editor.fontLigatures" = true;
      "editor.inlineSuggest.enabled" = true;
      "editor.fontFamily" = "Liga SFMono Nerd Font";
      "editor.formatOnSave" = true;
      "editor.formatOnPaste" = true;
      "editor.formatOnType" = true;
      "editor.stickyScroll.enabled" = true;
      "editor.minimap.enabled" = false;
      "editor.codeActionsOnSave" = {
        "source.fixAll" = true;
      };

      "explorer.confirmDelete" = false;

      "terminal.integrated.fontFamily" = "Liga SFMono Nerd Font";
      "terminal.integrated.macOptionIsMeta" = true;
      "terminal.integrated.profiles.osx" = {
        "fish" = {
          "path" = "${fish}/bin/fish";
          "args" = [
            "-l"
          ];
        };
      };
      "terminal.integrated.defaultProfile.osx" = "fish";

      "workbench.layoutControl.enabled" = false;

      "git.autofetch" = true;

      "vscode-neovim.neovimClean" = true;

      "nix.enableLanguageServer" = true;
      "nix.serverPath" = "${nil}/bin/nil";
      "nix.serverSettings" = {
        "nil" = {
          "formatting" = {
            "command" = ["alejandra"];
          };
        };
        "nixd" = {
          "options" = {
            "enable" = true;
          };
          "formatting" = {
            "command" = ["alejandra"];
          };
        };
      };

      "[python]" = {
        "editor.defaultFormatter" = "ms-python.python";
        "editor.formatOnSave" = true;
      };
      "python.formatting.provider" = "black";
      # Match rust-fmt
      "python.formatting.blackArgs" = [
        "--line-length=100"
      ];

      "eslint.experimental.useFlatConfig" = true;
      "[javascript]" = {
        "editor.defaultFormatter" = "esbenp.prettier-vscode";
      };
      "[javascriptreact]" = {
        "editor.defaultFormatter" = "esbenp.prettier-vscode";
      };
      "[typescript]" = {
        "editor.defaultFormatter" = "esbenp.prettier-vscode";
      };
      "[typescriptreact]" = {
        "editor.defaultFormatter" = "esbenp.prettier-vscode";
      };
      "[css]" = {
        "editor.defaultFormatter" = "esbenp.prettier-vscode";
      };
      "[html]" = {
        "editor.defaultFormatter" = "esbenp.prettier-vscode";
      };
      "redhat.telemetry.enabled" = false;
    };
  };
}

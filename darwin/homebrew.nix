{...}: {
  homebrew = {
    enable = true;
    global.autoUpdate = false;
    onActivation = {
      autoUpdate = true;
      cleanup = "zap";
      upgrade = true;
    };
    taps = [
      "shaunsingh/SFMono-Nerd-Font-Ligaturized"
      "homebrew/cask-fonts"
    ];
    casks = [
      "amethyst"
      "raycast"
      "itsycal"
      "tailscale"
      "ukelele"

      "firefox"
      "brave-browser"
      "google-chrome"
      "iina"

      "discord"
      "signal"
      "zoom"

      "ticktick"
      "obsidian"

      "prismlauncher"

      "font-sf-mono-nerd-font-ligaturized"
      "font-sf-pro"
      "font-sf-mono"
      "font-new-york"
    ];
    masApps = {
      "wireguard" = 1451685025;
    };
  };
}

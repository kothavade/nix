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
      "lulu"

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

      "eclipse-java"

      "font-sf-mono-nerd-font-ligaturized"
      "font-sf-pro"
      "font-sf-mono"
      "font-new-york"
    ];
    masApps = {
      "wireguard" = 1451685025;
      "sigma planner" = 1106938042;
      "good notes" = 1444383602;
    };
  };
}

{...}: {
  programs.starship = {
    enable = true;
    enableFishIntegration = true;
    # enableTransience = true; #TODO why is this not found?
    settings = {
      character = {
        success_symbol = "[➜](bold green) ";
        error_symbol = "[✖](bold red) ";
        vicmd_symbol = "[](blue) ";
      };
    };
  };
}

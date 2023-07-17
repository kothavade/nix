{...}: {
  # TODO: Duplicated with home-manager?
  programs.zsh.enable = true;
  programs.fish.enable = true;

  # TODO: Can this be abstracted into something that works on both NixOS and Darwin?
  services.tailscale = {
    enable = true;
  };

  system = {
    keyboard = {
      enableKeyMapping = true;
      remapCapsLockToEscape = true;
    };
    defaults = {
      dock = {
        autohide = true;
        wvous-tl-corner = 1;
        wvous-tr-corner = 1;
        wvous-bl-corner = 1;
        wvous-br-corner = 1;
      };
      CustomUserPreferences = {
        "com.microsoft.VSCode" = {
          "ApplePressAndHoldEnabled" = false;
        };
      };
      screencapture.location = "/tmp";
      NSGlobalDomain."com.apple.swipescrolldirection" = false;
    };
  };

  security.pam.enableSudoTouchIdAuth = true;
}

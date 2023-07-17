{pkgs, ...}: {
  # TODO use this
  fonts = {
    fontDir.enable = true;
    fonts = with pkgs; [
      (nerdfonts.override {fonts = [""];})
    ];
  };
}

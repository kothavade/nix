{...}: {
  programs.lsd = {
    enable = true;
    enableAliases = true;
    settings = {
      hyperlink = "auto";
    };
  };
}

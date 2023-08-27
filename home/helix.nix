{pkgs, ...}: {
  programs.helix = {
    enable = true;
    defaultEditor = true;
    settings = {
      theme = "oxocarbon";
      editor = {
        line-number = "relative";
        lsp.display-messages = true;
      };
    };
  };
}

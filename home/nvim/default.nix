{pkgs, ...}: {
  home.packages = with pkgs; [
    neovim # duh
    tree-sitter
    # nix
    nil
    alejandra
    # typescript
    typescript
  ];
}

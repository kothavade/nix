{ pkgs,...}: {
  home.stateVersion = "23.11";
  home.packages = with pkgs; [
    jdk17
    sccache
    rustup
    nodejs
    jujutsu
    wget
    htop
    fzf
    ripgrep
    fd
    bat
    delta
    github-copilot-cli
  ];
  imports = [
    ./shell
    ./nvim
    ./kitty.nix
    ./vscode.nix
    ./git.nix
  ];
}

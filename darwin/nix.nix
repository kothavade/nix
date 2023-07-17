{pkgs, ...}: {
  nix = {
    extraOptions = ''
      auto-optimise-store = true
      extra-nix-path = nixpkgs=flake:nixpkgs
      experimental-features = nix-command flakes
      keep-outputs = true
      keep-derivations = true
    '';
    package = pkgs.nix;
  };

  nixpkgs.config = {
    allowUnfree = true;
    autoOptimiseStore = true;
  };

  services.nix-daemon.enable = true;
}

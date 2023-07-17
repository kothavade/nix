{
  description = "Ved's System Config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

    home-manager.url = "github:nix-community/home-manager";
    darwin.url = "github:lnl7/nix-darwin";

    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {
    self,
    nixpkgs,
    ...
  } @ inputs: let
    forAllSystems = function:
      nixpkgs.lib.genAttrs [
        "aarch64-darwin"
      ] (system: function nixpkgs.legacyPackages.${system});
  in {
    darwinConfigurations."mbp" = inputs.darwin.lib.darwinSystem {
      system = "aarch64-darwin";
      modules = [
        ./darwin
        inputs.home-manager.darwinModules.home-manager
      ];
    };

    devShells = forAllSystems (pkgs: {
      default = with pkgs;
        mkShell {
          buildInputs = [just];
        };
    });
  };
}

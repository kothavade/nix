{...}: {
  users.users.ved = {
    name = "ved";
    home = "/Users/ved";
  };

  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;
  home-manager.users.ved = {pkgs, ...}: {
    imports = [
      ../home
    ];
  };
}

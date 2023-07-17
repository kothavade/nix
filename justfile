build:
    ./result/sw/bin/darwin-rebuild switch --flake .

update:
    nix flake update

clean:
    sudo nix-collect-garbage -d # remove old generations
    nix-collect-garbage -d # user apps (home-manager, etc)
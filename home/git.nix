{pkgs, ...}: let
  credential =
    if pkgs.stdenv.isDarwin
    then "osxkeychain"
    # TODO: Research libsecret or netrc as encrypted alt to store
    # https://stackoverflow.com/questions/53305965/whats-the-best-encrypted-git-credential-helper-for-linux
    # https://stackoverflow.com/questions/18838579/how-to-store-your-github-https-password-on-linux-in-a-terminal-keychain
    else "store";
in {
  programs.git = {
    enable = true;
    userName = "Ved Kothavade";
    userEmail = "ved@kothavade.com";
    delta = {
      enable = true;
      options = {
        navigate = true;
        light = false;
      };
    };
    extraConfig = {
      credential.helper = credential;
      init.defaultBranch = "main";
      push.autoSetupRemote = true;
    };
  };
}

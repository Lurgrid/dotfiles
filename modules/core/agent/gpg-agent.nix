{ pkgs, username, ... }:

{
  home-manager.users.${username} = {
    services.gpg-agent = {
      enable = true;

      enableScDaemon = true;
      enableZshIntegration = true;
      enableSshSupport = false;

      verbose = true;
      pinentry = {
        package = pkgs.pinentry-curses;
      };
    };
  };
}

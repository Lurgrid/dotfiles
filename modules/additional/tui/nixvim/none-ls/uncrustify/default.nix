{ username, ... }:

{
  home-manager.users.${username}.programs.nixvim = {
    plugins.none-ls.sources.formatting.uncrustify = {
      enable = true;

      settings = {
        filetypes = [
          "c"
        ];

        args = [
          "-l"
          "C"
          "-c"
          ./assets/.uncrustify_c.cfg
        ];
      };
    };
  };
}

{pkgs, ...}: {
  config.vim = {
    extraPlugins = with pkgs.vimPlugins; {
      telescope-file-browser = {
        package = telescope-file-browser-nvim;
      };
    };
  };
}

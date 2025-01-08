{config , pkgs, ...}:
{
 programs.vim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [ vim-airline ];
    settings = { ignorecase = true; };
    extraConfig = ''
      set mouse=a
      set number
      set relativenumber
      syntax on
      set tabstop=4
      set shiftwidth=4
      set expandtab
      set cursorline
    '';
  };
}

{
  pkgs,
  lib,
  config,
  inputs,
  ...
}:



{
  # https://devenv.sh/packages/
  packages = [
    pkgs.git
  ];

  languages.python = {
    enable = true;
    version = "3.13";
    poetry = {
      enable = true;
      install = {
        enable = true;
      };
      package = pkgs.poetry;
    };
  };
}

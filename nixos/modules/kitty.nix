{ pkgs, ... }:

{
  programs.kitty = {
    enable = true;
    font.name = "JetBrains Mono";
    font.size = 13.0;

    settings = {
      background_opacity = "0.8";
    };
  };
}

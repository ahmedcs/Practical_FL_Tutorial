{ pkgs, ... }:

let
  fonts = pkgs.symlinkJoin {
    name = "fonts";
    paths = [
      pkgs.fira
      pkgs.fira-code
    ];
  };
in

pkgs.mkShellNoCC {

  OSFONTDIR = "${fonts}/share/fonts";

  buildInputs = with pkgs; [

    # Python
    python312
    uv
  ];
}

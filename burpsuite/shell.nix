{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
    packages = [ pkgs.burpsuite pkgs.mesa ];
    FONTCONFIG_FILE = pkgs.makeFontsConf {
        fontDirectories = [ pkgs.dejavu_fonts ];
    };
_JAVA_OPTIONS = "-Dswing.defaultlaf=com.sun.java.swing.plaf.motif.MotifLookAndFeel";
}

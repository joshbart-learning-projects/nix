{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
    # Packages
    packages = [ pkgs.__ ];

    # Dependencies
    inputsFrom = [ pkgs.__ ];

    # Runs bash shell code automatically
    shellHook = ''
        echo "Welcome to the shell!"
    '';

    # Set environmental variables
    ENVVAR = "test";
}

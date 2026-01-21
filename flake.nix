{
  description = "ScopeBuddy – gamescope wrapper for Wayland";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }:
  let
    systems = [ "x86_64-linux" "aarch64-linux" ];
    forAllSystems = nixpkgs.lib.genAttrs systems;
  in
  {
    packages = forAllSystems (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in {
        default = pkgs.stdenvNoCC.mkDerivation {
          pname = "scopebuddy";
          version = "git";
          src = self;

          nativeBuildInputs = [ pkgs.makeWrapper ];

          installPhase = ''
            install -Dm755 bin/scopebuddy $out/bin/scopebuddy
            ln -s $out/bin/scopebuddy $out/bin/scb

            wrapProgram $out/bin/scopebuddy \
              --prefix PATH : ${pkgs.lib.makeBinPath [
                pkgs.gamescope
                pkgs.jq
                pkgs.wlr-randr
              ]}
          '';
        };
      }
    );

    apps = forAllSystems (system: {
      default = {
        type = "app";
        program = "${self.packages.${system}.default}/bin/scopebuddy";
      };
    });
  };
}

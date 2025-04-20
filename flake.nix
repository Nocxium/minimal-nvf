{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nvf.url = "github:notashelf/nvf";
  };

  outputs = { self, nixpkgs, ... } @ inputs:
    let
      supportedSystems = [ "x86_64-linux" "aarch64-linux" ];
      forAllSystems = f: nixpkgs.lib.genAttrs supportedSystems f;

      mkNeovimConfig = system:
        let
          pkgs = import nixpkgs { inherit system; };
        in
        inputs.nvf.lib.neovimConfiguration {
          inherit pkgs;
          modules = [ ./config ];
        };

    in {
      packages = forAllSystems (system: {
        default = (mkNeovimConfig system).neovim;
      });
    };
}

{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    rust-overlay = {
      url = "github:oxalica/rust-overlay";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs =
    inputs@{
      nixpkgs,
      home-manager,
      rust-overlay,
      nixvim,
      ...
    }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        overlays = [ rust-overlay.overlays.default ];
      };
      buildHomeConfiguration =
        hostName:
        {
          desktop,
          extraApps,
          dev,
          games,
        }:
        home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          extraSpecialArgs = {
            inherit inputs;
            inherit
              hostName
              ;
          };
          modules = [
            (./. + "/hosts/${hostName}/home.nix")
            nixvim.homeModules.nixvim
          ];
        };
    in
    {
      nixosConfigurations = {
        laptop2 = nixpkgs.lib.nixosSystem { modules = [ ./hosts/laptop2 ]; };
        laptop3 = nixpkgs.lib.nixosSystem { modules = [ ./hosts/laptop3 ]; };
      };

      homeConfigurations = {
        laptop2 = buildHomeConfiguration "laptop2" {
          desktop = true;
          extraApps = true;
          dev = true;
          games = true;
        };
        laptop3 = buildHomeConfiguration "laptop3" {
          desktop = true;
          extraApps = false;
          dev = false;
          games = false;
        };
      };
    };
}

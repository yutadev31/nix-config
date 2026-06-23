{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
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
      lib = nixpkgs.lib;
      pkgs = import nixpkgs {
        inherit system;
        overlays = [ rust-overlay.overlays.default ];
      };
      hostNames = [
        "laptop2"
        "laptop3"
      ];
      mkConfigurations =
        builder:
        lib.genAttrs hostNames (hostName: builder hostName);
      buildHomeConfiguration =
        hostName:
        home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          extraSpecialArgs = {
            inherit inputs;
            inherit hostName;
          };
          modules = [
            (./. + "/hosts/${hostName}/home.nix")
            nixvim.homeModules.nixvim
          ];
        };
    in
    {
      nixosConfigurations = mkConfigurations (
        hostName: nixpkgs.lib.nixosSystem { modules = [ (./. + "/hosts/${hostName}") ]; }
      );

      homeConfigurations = mkConfigurations buildHomeConfiguration;
    };
}

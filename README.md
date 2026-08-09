# nix-config

Personal NixOS / Home Manager configuration. This repo uses Nix Flakes to keep per-host NixOS and Home Manager configs together.

## Usage

### Update flake inputs

```sh
./scripts/flake-update
```

### Apply NixOS

```sh
sudo ./scripts/os-rebuild
```

If you want to specify a host explicitly:

```sh
sudo nixos-rebuild switch --flake .#laptop2
```

### Apply Home Manager

```sh
./scripts/home-rebuild
```

`./scripts/home-rebuild` uses `HOSTNAME`. To specify a host manually:

```sh
home-manager switch --flake .#laptop2
```

## Hosts

- `laptop2`
  - NixOS: GUI + Android + Bluetooth + Docker
  - Home Manager: desktop + dev + games + extra apps
- `laptop3`
  - NixOS: GUI
  - Home Manager: desktop

## Layout

- `flake.nix`
  - Generates `nixosConfigurations` and `homeConfigurations` from a shared host list
- `hosts/`
  - Host-specific values and composition
  - `default.nix`: host entrypoint
  - `networking.nix`, `system.nix`, `home.nix`: host-local overrides
- `profiles/`
  - Reusable config sets assembled from modules
  - `nixos/desktop.nix`, `nixos/dev-workstation.nix`, `nixos/bluetooth.nix`
  - `home/desktop.nix`, `home/dev.nix`, `home/games.nix`, `home/extra-apps.nix`
- `modules/nixos/`
  - Reusable system modules
  - `base/`: boot, user, ssh, nix, tools, network defaults
  - `desktop/`: Hyprland, Niri, Sway, greetd, PipeWire, fonts, and browser-related system config
  - `dev/`: Android, Docker, Ollama
- `modules/home/`
  - Reusable user modules
  - `base/`: CLI, fish, shared user defaults
  - `desktop/`: Hyprland, Niri, Sway, Waybar, swaync, rofi, fcitx5, theme
  - `apps/`: shared GUI app set and optional extras
  - `programs/`: per-program config such as neovim, alacritty, vscodium
  - `dev/`, `games/`: focused package groups
- `scripts/`
  - `os-build`: `nixos-rebuild build --flake .#<host>`
  - `os-test`: `nixos-rebuild test --flake .#<host>`
  - `os-rebuild`: `nixos-rebuild switch --flake .`
  - `home-build`: `home-manager build --flake .#<host>`
  - `home-rebuild`: `home-manager switch --flake .#$HOSTNAME`
  - `flake-update`: `nix flake update`
  - `flake-check`: `nix flake check`
  - `clean-gc`: `nix-collect-garbage -d` + `nix store gc`
  - `format`: `nixfmt flake.nix hosts modules` + `stylua modules`
  - `hosts`: `nix flake show` + `HOSTNAME` (if set)

## Notes

- `modules/home/desktop/niri/` switches `outputs-<host>.kdl` per host via `hostName`.
- Sway remains the default greetd session; start `Hyprland` explicitly to use its configuration.
- Extra GUI apps are isolated in `profiles/home/extra-apps.nix` and enabled on `laptop2`.
- Alacritty colors theme name: Ink & Frost  (see `docs/colors.md`).

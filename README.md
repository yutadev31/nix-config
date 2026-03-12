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
  - Home Manager: desktop + dev + games + extraApps
- `laptop3`
  - NixOS: GUI
  - Home Manager: desktop

## Layout

- `flake.nix`
  - `nixosConfigurations`: `laptop2`, `laptop3`
  - `homeConfigurations`: `laptop2`, `laptop3`
- `hosts/`
  - Per-host NixOS config (e.g., static IP)
- `modules/nixos/`
  - Common NixOS config (boot, user, ssh, nix, etc.)
  - `gui.nix`: niri + greetd + pipewire + fonts, etc.
  - `android.nix`, `bluetooth.nix`, `docker.nix`
- `modules/home-manager/`
  - `common/`: CLI, fish, neovim
  - `desktop/`: niri, waybar, swaync, rofi, fcitx5, theme, apps
  - `dev.nix`: dev toolchain
  - `games.nix`: game-related packages
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

- `modules/home-manager/desktop/niri/` switches `outputs-<host>.kdl` per host.
- Extra GUI apps are gated by the `extraApps` flag (enabled on `laptop2`).
- Alacritty colors theme name: Ink & Frost  (see `docs/colors.md`).

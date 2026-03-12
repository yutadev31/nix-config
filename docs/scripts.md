# Helper Scripts

This repo provides small helper scripts under `scripts/`. Most of them accept an optional host argument; if omitted, they use `HOSTNAME`.

## Host selection

```sh
./scripts/os-build laptop2
./scripts/os-test laptop2
./scripts/home-build laptop2
```

If you omit the host, the scripts read `HOSTNAME`:

```sh
export HOSTNAME=laptop2
./scripts/os-build
```

## Scripts

### `scripts/flake-update`

Update flake inputs.

```sh
./scripts/flake-update
```

### `scripts/flake-check`

Run flake checks.

```sh
./scripts/flake-check
```

### `scripts/os-build`

Build the system without switching.

```sh
./scripts/os-build laptop2
```

### `scripts/os-test`

Test-apply the system (temporary until reboot).

```sh
sudo ./scripts/os-test laptop2
```

### `scripts/os-rebuild`

Switch the system to the new configuration.

```sh
sudo ./scripts/os-rebuild
```

### `scripts/home-build`

Build the Home Manager configuration without switching.

```sh
./scripts/home-build laptop2
```

### `scripts/home-rebuild`

Apply the Home Manager configuration.

```sh
./scripts/home-rebuild
```

### `scripts/format`

Format Nix and Lua files.

```sh
./scripts/format
```

### `scripts/clean-gc`

Run garbage collection for system and user stores.

```sh
./scripts/clean-gc
```

### `scripts/hosts`

Show available flake outputs and the current `HOSTNAME` (if set).

```sh
./scripts/hosts
```

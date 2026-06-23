# AGENTS.md

This file contains instructions for automated agents working in this repository.

## Scope

- The repository is a Nix flake for system and user configuration. Expect `flake.nix` as the entry point.
- Host-specific settings live under `hosts/`; shared modules live under `modules/`.
- Documentation lives under `docs/`. Prefer referencing or updating docs when behavior changes.

## Modules layout

- `modules/home/` contains Home Manager modules for user-level configuration.
- `modules/nixos/` contains NixOS modules for system-level configuration.
- `profiles/` contains reusable configuration sets composed from modules.

## Scripts

- `scripts/all-rebuild`: run OS rebuild, then Home Manager rebuild.
- `scripts/clean-gc`: garbage-collect old generations (uses `sudo` for system GC).
- `scripts/flake-check`: run `nix flake check`.
- `scripts/flake-update`: run `nix flake update`.
- `scripts/format`: format Nix and Lua sources (`nixfmt` and `stylua`).
- `scripts/home-build`: build Home Manager config for `HOSTNAME` or an explicit host arg.
- `scripts/home-rebuild`: switch Home Manager config for `HOSTNAME`.
- `scripts/hosts`: show flake outputs and echo `HOSTNAME` when set.
- `scripts/os-build`: build NixOS config for `HOSTNAME` or an explicit host arg.
- `scripts/os-rebuild`: switch NixOS configuration for current host (uses `sudo`).
- `scripts/os-test`: test NixOS config for `HOSTNAME` or an explicit host arg (uses `sudo`).

## Working rules

- Prefer small, targeted edits and explain the rationale in your response.
- Preserve existing style and formatting (especially in `.nix` files).
- Use ASCII by default; only add Unicode when the file already uses it or it is required.
- When asked for a commit message, read `docs/commit-msg.md` first and follow it.
- Do not run networked commands unless explicitly asked; request approval if needed.
- Avoid destructive git commands unless the user explicitly requests them.

## Nix guidance

- Keep modules composable and avoid duplication; prefer shared modules for common config.
- When adding new modules, wire them through `flake.nix` or the relevant host entry.
- Keep options grouped logically and sorted when a pattern already exists.

## Testing

- If you change Nix configs, suggest `nix flake check` or a relevant build/test command.
- Do not run tests unless asked.

## Output expectations

- Summarize changes and reference edited files by path.
- Provide concise next steps only when helpful.

# nebula-nix

Personal Nix channel/flake for fast package installs.

## Current packages

- `cpctl`

## Local usage

```bash
# Register local repo as a flake alias
nix --extra-experimental-features 'nix-command flakes' \
  registry add nebula "git+file:///Users/anton.feldmann/Projects/priv/pkg/nebula-nix"

# Install cpctl from local channel
nix --extra-experimental-features 'nix-command flakes' \
  profile add nebula#cpctl
```

## Useful checks

```bash
nix --extra-experimental-features 'nix-command flakes' flake show
nix --extra-experimental-features 'nix-command flakes' build .#cpctl
```

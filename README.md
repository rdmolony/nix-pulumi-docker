# `nix-pulumi-docker-python`

> [!WARNING]
> This build failed on 24-11-14 because the `<nixpkgs>` version of `pulumi` is not new enough for this `PyPi` definition -
> ```sh
> pulumi<4.0.0,>=3.136.0 not satisfied by version 3.99.0
> ``` 

This repository defines a `Nix` definition for building the `Python` library `pulumi-docker` 

## Installation

Install `nix` ...

Via [DeterminateSystems/nix-installer](https://github.com/DeterminateSystems/nix-installer) ...

```sh
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | \
  sh -s -- install
```

Or via [the official installer](https://nix.dev/install-nix.html) ...

```sh
curl -L https://nixos.org/nix/install | sh -s -- --daemon
```

> [!NOTE]
> [`DeterminateSystems/nix-installer` ships with a `nix-uninstall` command if you want to easily remove it](https://github.com/DeterminateSystems/nix-installer/blob/ef23eb4d30c279547bdbe3026a0acaaf8bc680dc/README.md#uninstalling) 

## Build

Via `nix-build` ...

```sh
nix-build
```

Or via `nix repl` ...

```sh
nix repl '<nixpkgs>'
pulumi-docker = pkgs.python312Packages.callPackage ./pulumi-docker.nix { }
:b pulumi-docker
```

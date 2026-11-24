# Homebrew Tap for Ryan Duguid

Homebrew formulae and prebuilt bottles for tools published by Ryan Duguid.

## Install

```sh
brew tap ryanduguid/tap
brew install ozzit
brew install australian-tax-calculators
```

Or in one command:

```sh
brew install ryanduguid/tap/ozzit
brew install ryanduguid/tap/australian-tax-calculators
```

## Available formulae

| Formula | Description | Source |
| --- | --- | --- |
| `ozzit` | Native Microsoft Excel LAMBDA functions for Australian financial modelling (`ozzit` CLI plus `ozzit.xlsx`, `oz.txt` and `functions.csv` under `$(brew --prefix)/share/ozzit`) | [ryanduguid/Ozzit](https://github.com/ryanduguid/Ozzit) |
| `australian-tax-calculators` | Deterministic Rust CLI covering 102 bounded Australian tax and superannuation calculation worksheets | [ryanduguid/australian-accounting](https://github.com/ryanduguid/australian-accounting/tree/main/packages/australian-tax-calculators) |

## Maintenance

- Bump a formula on a new upstream release with the `Bump formula version` workflow (`workflow_dispatch`).
- Build and attach prebuilt macOS and Linux bottles with the `Build and publish Homebrew bottles` workflow (`workflow_dispatch`).

## Licence

Formula definitions in this tap are licensed under the [Apache License, Version 2.0](LICENSE). Each installed formula carries the licence of its upstream release.

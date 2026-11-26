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
```

## Available formulae

| Formula | Executable | Description | Source |
| --- | --- | --- | --- |
| `ozzit` | `ozzit` | Native Microsoft Excel LAMBDA functions for Australian financial modelling (`ozzit` CLI plus `ozzit.xlsx`, `oz.txt` and `functions.csv` under `$(brew --prefix)/share/ozzit`) | [ryanduguid/Ozzit](https://github.com/ryanduguid/Ozzit) |
| `australian-tax-calculators` | `australian-tax-calculators` | Deterministic Rust CLI covering 148 bounded Australian tax and superannuation calculation worksheets | [ryanduguid/australian-accounting](https://github.com/ryanduguid/australian-accounting/tree/main/packages/australian-tax-calculators) |
| `aus-accounting-mcp` | `aus-accounting-mcp` | Local MCP server over stdio for Australian accounting reviews, tax and super worksheets and cited retrieval from a configured Markdown folder; the worksheets run its own copy of the `australian-tax-calculators` executable, taken at install time | [ryanduguid/australian-accounting](https://github.com/ryanduguid/australian-accounting/tree/main/apps/aus-accounting-mcp) |
| `solomons-sword` | `solomons-sword` | Division 6 trust allocation, s 100A risk zoning and s 99B review CLI | [ryanduguid/australian-accounting](https://github.com/ryanduguid/australian-accounting/tree/main/packages/solomons-sword) |
| `the-exchequer-tally` | `the-exchequer-tally` | Corporate tax, franking ledger and Division 203 benchmark review CLI | [ryanduguid/australian-accounting](https://github.com/ryanduguid/australian-accounting/tree/main/packages/the-exchequer-tally) |
| `review-ready-gate` | `review-ready` | Offline workpaper completeness and tie-out controls CLI | [ryanduguid/accounting-review-pipeline](https://github.com/ryanduguid/accounting-review-pipeline/tree/main/packages/review-ready-gate) |
| `monthly-close-control-plane` | `close-control` | Offline monthly close controls and review evidence CLI | [ryanduguid/accounting-review-pipeline](https://github.com/ryanduguid/accounting-review-pipeline/tree/main/packages/monthly-close-control-plane) |
| `release-policy` | `release-policy` | Release and review policy validation and workflow initialisation CLI | [ryanduguid/release-policy](https://github.com/ryanduguid/release-policy) |

## Maintenance

- Bump a formula on a new upstream release with the `Bump formula version` workflow (`workflow_dispatch`).
- `aus-accounting-mcp` accepts only the `australian-tax-calculators` version its release pins (1.4.0 for 0.13.0), so bump the 2 together; CI retests a formula's dependents when it changes.
- Stage prebuilt macOS and Linux bottles as draft releases and open an update PR with the `Build and publish Homebrew bottles` workflow (`workflow_dispatch`); `Publish staged Homebrew bottles` publishes the draft release after the bottle block merges to `main`.

## Licence

Formula definitions in this tap are licensed under the [Apache License, Version 2.0](LICENSE). Each installed formula carries the licence of its upstream release.

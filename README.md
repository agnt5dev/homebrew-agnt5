# homebrew-agnt5

Homebrew tap for the [AGNT5](https://agnt5.dev) CLI.

## Installation

```bash
brew install agnt5dev/agnt5/agnt5
```

Or tap first, then install:

```bash
brew tap agnt5dev/agnt5
brew install agnt5
```

## Usage

After installation, you can use agnt5 by running:

```bash
agnt5 --help
```

## Releases

The formula is updated automatically by the `Build and Distribute CLI` workflow
in the main [agnt5](https://github.com/arunreddy/agnt5) repository
(`scripts/update-homebrew-formula.sh`), which pins each release's binaries and
SHA-256 checksums from `cdn.agnt5.com`. Do not edit `Formula/agnt5.rb` by hand.

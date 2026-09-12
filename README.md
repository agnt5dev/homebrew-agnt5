# homebrew-agnt5

Homebrew tap for the [AGNT5](https://agnt5.com) CLI.

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

Publishing requires a `TAP_GITHUB_TOKEN` Actions secret in `arunreddy/agnt5`.
Use a fine-grained token with resource owner `agnt5dev`, limited to this repository, with
**Contents: read and write** permission. Add it through the repository's Actions
secrets settings or `gh secret set TAP_GITHUB_TOKEN --repo arunreddy/agnt5`.
After configuring the secret, run `Build and Distribute CLI` and verify that its
`Update Homebrew Tap` job publishes the new version to `Formula/agnt5.rb`.

# Clawket Homebrew Tap

Homebrew formulas for the Clawket project.

## Usage

```sh
brew tap clawket/tap
brew install clawket          # CLI
brew install clawketd         # daemon
```

## Formulas

- `Formula/clawket.rb` — `@clawket/cli` (Rust CLI + embedded MCP server)
- `Formula/clawketd.rb` — `@clawket/daemon` (Rust daemon, axum + rusqlite + sqlite-vec)

## Updating

The formulas are auto-bumped by GitHub Actions in `clawket/cli` and `clawket/daemon`
when a new release is published. Manual edits should not be necessary.

## License

MIT — same as the upstream projects.

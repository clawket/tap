# Contributing to `clawket/tap`

The Clawket Homebrew tap. Hosts `Formula/clawket.rb` (the CLI) and
`Formula/clawketd.rb` (the daemon, with a `service` block for `brew
services`). Tapped by users via `brew tap clawket/tap`.

## Local setup

```bash
git clone https://github.com/clawket/tap
cd tap
brew style Formula/*.rb               # rubocop config bundled with brew
brew install --dry-run clawket/tap/clawket
brew install --dry-run clawket/tap/clawketd
```

The formulas reference release tarballs under `clawket/cli` and
`clawket/daemon`. Bumping a formula version requires the matching upstream
release to exist first.

## Run tests

```bash
brew style Formula/*.rb               # CI gate
brew install --dry-run clawket/tap/clawket
brew install --dry-run clawket/tap/clawketd
brew install --build-from-source --HEAD clawket/tap/clawket  # optional smoke
brew test clawket                     # exercises the formula's `test do` block
```

## Pull requests

- Branch off `main`. Conventional Commits.
- Version bump PRs are typically auto-generated when the cli/daemon release
  workflows tag a new version — do not bump manually unless the auto-bump
  is broken.
- New formulas (e.g. clawket-web) need a maintainer review and the matching
  upstream release artifact.

## Commit convention

Conventional Commits. `chore: bump <name> to <ver>` is the canonical
formula-bump message; the bot uses this exact form.

## Roadmap

See [`ROADMAP.md`](https://github.com/clawket/clawket/blob/main/ROADMAP.md)
in the meta repo. The tap mirrors the cli + daemon release cadence — there
is no independent roadmap.

# Bitty MCP quality gates.
# Tool version pins live here (one place) and mirror package.json devDependencies;
# keep both identical when bumping. All tool invocations go through bun/bunx;
# never call linters or formatters directly by name and never use npm, npx, or yarn.

markdownlint_pin := "0.23.1"
prettier_pin := "3.9.6"
commitlint_pin := "21.2.2"
lefthook_pin := "2.1.10"

set positional-arguments

# List available recipes.
default:
    @just --list

# Lint all Markdown sources against .markdownlint-cli2.jsonc
lint:
    bunx --bun markdownlint-cli2@{{markdownlint_pin}}

# Lint specific Markdown files (used by the pre-commit hook).
lint-files *files:
    bunx --bun markdownlint-cli2@{{markdownlint_pin}} {{files}}

# Check formatting for all recognized files via Prettier
fmt-check:
    bunx --bun prettier@{{prettier_pin}} --check . --ignore-unknown

# Check formatting of specific files (used by the pre-commit hook).
fmt-check-files *files:
    bunx --bun prettier@{{prettier_pin}} --check {{files}}

# Validate one Conventional Commits message file; used by lefthook and CI-adjacent checks
commit-check file:
    test -d node_modules/@commitlint/config-conventional || bun install --frozen-lockfile
    bunx --bun commitlint@{{commitlint_pin}} --edit "$1"

# Install Git hooks managed by lefthook (opt-in per contributor checkout).
hooks-install:
    bunx --bun lefthook@{{lefthook_pin}} install

# Remove lefthook-managed Git hooks.
hooks-uninstall:
    bunx --bun lefthook@{{lefthook_pin}} uninstall

# Run every stage gate (commit messages are gated separately per commit)
check: lint fmt-check

# Publish a ctxpack snapshot to the bitty-mcp-workflow mirror (commander
# merge closeout only; never a git hook). Dry run exports + validates without push.
workflow-publish *args:
    bash scripts/publish-ctxpack.sh {{args}}

workflow-publish-dry *args:
    bash scripts/publish-ctxpack.sh --dry-run {{args}}

# Restore the local CarryCtx DB from the bitty-mcp-workflow mirror LATEST
# snapshot (fresh-clone recipe). Refuses to replace a non-empty local DB
# without --force, e.g. `just workflow-import --force`.
workflow-import *args:
    bash scripts/fetch-ctxpack.sh {{args}}

workflow-import-dry *args:
    bash scripts/fetch-ctxpack.sh --dry-run {{args}}

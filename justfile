# Bitty MCP quality gates.
# All tool invocations are pinned here; never call linters or formatters
# directly by name and never use npm, npx, or yarn in this repository.

set positional-arguments

# Lint all Markdown sources against .markdownlint-cli2.jsonc
lint:
    bunx --bun markdownlint-cli2@0.23.1

# Check formatting for all recognized files via Prettier
fmt-check:
    bunx --bun prettier@3.9.6 --check . --ignore-unknown

# Validate one Conventional Commits message file; used by lefthook and CI-adjacent checks
commit-check file:
    test -d node_modules/@commitlint/config-conventional || bun install --frozen-lockfile
    bunx --bun commitlint@21.2.2 --edit "$1"

# Run every stage gate (commit messages are gated separately per commit)
check: lint fmt-check

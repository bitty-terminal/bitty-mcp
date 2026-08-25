# Contributing

Thanks for considering a contribution to Bitty MCP. This repository is
pre-implementation: governance and planning material only. See
[README.md](README.md) for the current capability and ownership boundaries.

## Ground rules

- Read [AGENTS.md](AGENTS.md) before making changes. It defines the repository
  authority model, CarryCtx workflow, security boundaries, and toolchain
  policy.
- Do not add product code until a separately authorized task has accepted the
  protocol, security, and interoperability gates.
- Documentation and governance changes stay in English and must keep accepted,
  candidate, open, implemented, and verified statements distinguishable.

## Prerequisites

Tooling expectations follow [AGENTS.md](AGENTS.md):

- `just` — command runner; all quality gates run through the repository
  justfile once it is initialized. Never invoke formatters or linters directly
  by name.
- `bun` — JavaScript/TypeScript execution and package management when needed.
  Never use `npm`, `npx`, or `yarn` here.
- `markdownlint-cli2` — Markdown linting, configured by
  `.markdownlint-cli2.jsonc`.
- `commitlint` — commit message validation, configured by
  `commitlint.config.ts`.

## Development loop

All quality gates run through the repository justfile; never invoke formatters
or linters directly by name:

```text
just lint          Markdown lint (markdownlint-cli2)
just fmt-check     Format check (Prettier)
just check         All stage gates
```

Commit messages are enforced by lefthook (`commit-msg` runs `just
commit-check`), and staged `*.md` files are checked on `pre-commit`.

1. Claim work through a CarryCtx task with explicit scopes.
2. Make changes within your declared scope only.
3. Run `just check` locally before requesting review.
4. Record progress, checkpoints, and evidence in CarryCtx rather than relying
   on chat state.

## Delivery lifecycle

Changes follow the standard lifecycle:

```text
Issue -> Branch -> Commit -> Pull Request -> Review -> Merge
```

- Link each pull request to its GitHub Issue and CarryCtx task.
- Independent review plus required CI must pass before merge.
- Documentation synchronization in `bitty-docs` is part of definition of done.

## Committing

Use [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/):

```text
docs(governance): add security policy
chore(toolchain): wire markdownlint gate
```

Commit messages are validated against `commitlint.config.ts`.

## Reporting issues

- Security vulnerabilities: follow [SECURITY.md](SECURITY.md). Never report
  vulnerabilities via public issues.
- Everything else: open a GitHub Issue describing the outcome, scope, and any
  cross-repository impact on `bitty-docs` or sibling repositories.

## Licensing

By contributing, you agree that your contributions are licensed under the
[MIT License](LICENSE).

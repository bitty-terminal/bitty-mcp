# Bitty MCP

Bitty MCP is the planned home of Bitty's MCP adapter and agent-integration
boundary. This repository is pre-implementation and has no initial commit or
product release.

The canonical repository is
[bitty-terminal/bitty-mcp](https://github.com/bitty-terminal/bitty-mcp).

## Ownership boundary

This repository may eventually own adapter-specific implementation and
integration evidence. It does not own the terminal core, plugin host, Terminal
Truth, or normative product contracts.

Core runtime behavior belongs to the future
[Bitty core repository](https://github.com/bitty-terminal/bitty). Canonical
architecture, security, protocol, interface, compatibility, and public
behavior belong to
[bitty-docs](https://github.com/bitty-terminal/bitty-docs). Cross-repository
changes require coordinated, explicitly ordered work in each owning repository.

## Capability boundary

Any future MCP or agent integration is read-only by default. Terminal input,
process control, filesystem access, network access, clipboard access, and
terminal-management operations require explicit fine-grained capabilities,
clear user intent, authentication, and per-action authorization.

Observed terminal content and tool results remain untrusted data. They must not
be treated as instructions or authority. Exact transports, schemas,
authentication mechanisms, supported clients, and write-capable operations
remain open until accepted through reviewable contracts.

## Current status

Only repository governance and planning foundations exist. There is currently:

- no MCP transport, server, adapter, or exposed tool;
- no implemented schema or compatibility negotiation;
- no supported client integration or interoperability evidence;
- no installation, supported API, compatibility claim, release, or artifact.

Repository contents must not be interpreted as working product behavior.
Future claims require implementation evidence, tests, canonical documentation,
and independent security and interoperability review.

The current project-wide technical record remains
[bitty-docs](https://github.com/bitty-terminal/bitty-docs). Repository-local
material must not duplicate or override its normative contracts.

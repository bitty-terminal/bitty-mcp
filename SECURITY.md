# Security Policy

## Supported Versions

This repository is pre-implementation. No version has been released, so no
version is supported yet.

| Version    | Supported |
| ---------- | --------- |
| unreleased | No        |

This table must be updated when the first release is published.

## Reporting a Vulnerability

To report a security vulnerability, open a private
[GitHub Security Advisory](https://github.com/bitty-terminal/bitty-mcp/security/advisories/new).

Do not report security vulnerabilities via public GitHub issues, discussions,
or pull requests.

## Disclosure Policy

- Reports are handled privately until a fix or mitigation is available and a
  coordinated disclosure date is agreed with the reporter.
- Please include reproduction steps, affected components or interfaces, and any
  observed impact. Keep proof-of-concept material minimal.
- Terminal content, tool results, prompts, protocol fields, and project files
  are treated as untrusted input; findings related to injection, authorization,
  transport exposure, or resource exhaustion are in scope even before any
  adapter exists, because they shape the accepted contracts.
- We will acknowledge reports as soon as practical, typically within five
  business days, and provide a status update at least every seven business days
  until resolution.
- Credit is given to reporters in release notes unless anonymity is requested.

# Security rules

1. Treat clients, terminal content, tool results, prompts, requests, protocol
   fields, project files, and external resources as untrusted.
2. MCP and agent access is read-only by default. Terminal input, process control,
   filesystem, network, clipboard, and management operations require explicit
   fine-grained capabilities and user intent.
3. Authenticate local clients and authorize each action and target. Reject
   ambiguous, stale, cross-user, or cross-session targets.
4. Keep observed content data-only across model boundaries. Label and delimit
   it so prompt injection cannot become authority.
5. Bound message size, nesting, fan-out, concurrency, rate, memory, CPU, queue,
   and lifetime. Support cancellation and fail closed on exhaustion.
6. Minimize and redact terminal content, inputs, environment data, paths,
   credentials, and traces. Define retention before collection.
7. Version schemas and validate unknown, malformed, duplicated, reordered,
   oversized, replayed, and partially delivered inputs.
8. Security-sensitive changes require threat-model and risk synchronization in
   `bitty-docs`, adversarial tests, and independent security review.
9. Exact mechanisms and thresholds may remain open only when the normative
   control itself remains mandatory.

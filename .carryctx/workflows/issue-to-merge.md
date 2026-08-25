# Issue-to-merge workflow

## 1. Intake and contract

1. Open or identify the GitHub Issue in the canonical `bitty-mcp` repository.
2. State the outcome, non-goals, affected protocols, trust boundaries,
   compatibility obligations, documentation impact, and acceptance evidence.
3. Confirm that required design and security contracts exist in `bitty-docs`;
   route unresolved cross-cutting choices to an ADR, RFC, or open question.

## 2. CarryCtx planning

1. Create or update the CarryCtx team and task linked to the Issue.
2. Encode prerequisite ordering as dependencies and every intended edit as an
   explicit scope.
3. Assign the narrowest persona, claim/start the task, and bind a named session.
4. Record initial progress, assumptions, risks, and the first verification plan.

## 3. Isolation and implementation

1. After the first commit, create a task branch and isolated worktree before
   editing. Keep unrelated tasks in separate worktrees.
2. Before the first commit only, use the shared checkout for initialization when
   scopes are disjoint; preserve all unrelated files and run CI-equivalent gates.
3. Make scoped, reviewable changes. Record decisions, blockers, evidence, and
   checkpoints as the work evolves.
4. Never broaden authority from a documentation or protocol task into product
   implementation, remote mutation, or release work.

## 4. Commit and pull request

1. Run focused tests plus repository-wide required checks.
2. Synchronize affected canonical `bitty-docs` contracts in a linked change.
3. Create coherent commits and a pull request linked to the Issue and CarryCtx
   task. Include protocol, security, interoperability, compatibility,
   documentation, validation, and cross-repository ordering notes.

## 5. Independent review and CI

1. A reviewer other than the author checks the diff against accepted contracts,
   scopes, failure cases, abuse cases, compatibility, and documentation.
2. Required CI must pass reproducibly. Record skipped or environment-limited
   evidence as a blocker or risk rather than a pass.
3. Resolve findings through reviewed changes; do not hide them in summaries.

## 6. Merge and closure

1. Merge only after approvals, CI, documentation synchronization, and ordering
   constraints are satisfied.
2. Record the merged revision, verification, and residual follow-up in a final
   CarryCtx checkpoint.
3. Close the GitHub Issue, complete the CarryCtx task, end sessions, and retain
   separately scoped follow-up tasks for unfinished work.

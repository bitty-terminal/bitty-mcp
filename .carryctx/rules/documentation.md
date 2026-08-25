# Documentation rules

1. English is the only canonical documentation language. Translations, locale
   directories, and multilingual routing remain deferred.
2. `bitty-docs` owns architecture, security, protocol, interface, decision, and
   public-behavior contracts. This repository owns implementation evidence and
   repository-local contributor guidance.
3. Distinguish normative, accepted, candidate, open, implemented, and verified
   statements. Empty files, examples, and proposed schemas are not product
   evidence.
4. Keep one authoritative definition. Link dependent material instead of
   copying contracts that can drift.
5. Document schemas, versions, capability requirements, limits, errors,
   compatibility, deprecation, and security impact with the behavior they govern.
6. Preserve provenance and the inspected revision for implementation or
   interoperability claims.
7. A protocol or public behavior change must update canonical `bitty-docs` in a
   linked change before completion.
8. Record open questions and risks explicitly; do not resolve ambiguity through
   undocumented implementation behavior.
9. Validate language, links, formatting, repository hygiene, and factual status
   before review.

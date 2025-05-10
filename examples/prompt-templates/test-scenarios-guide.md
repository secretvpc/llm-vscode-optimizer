# Prompt Template Guide: Test Case Generation

This guide provides design rationale, usage patterns, and practical examples for using LLMs to generate test cases based on source code. It complements the `test-scenarios.md` operational prompt.

---

## Purpose

Automated generation of test cases via LLMs enables faster coverage validation, enhances code robustness, and supports test-driven development. This guide outlines how to formulate prompts for maximum precision and test quality.

---

## Prompt Design Principles

### 1. Task Clarity

Specify the desired granularity:

* Unit vs. integration testing
* Functional vs. edge-case behavior
* Language-specific syntax vs. pseudocode

### 2. Context Scope

The provided code block should:

* Be minimal and self-contained
* Include relevant data types and edge condition hints
* Avoid external dependencies unless explicitly described

### 3. Rule Constraints

Typical constraints include:

* Classification of test cases (normal, edge, invalid)
* Expected format (e.g., assertion style, naming conventions)
* Coverage requirements (e.g., 100%, branch-specific, exception handling)

---

## Prompt Variants

### Variant A: Basic Unit Testing

```
TASK: Generate unit tests for the function below.
CONTEXT: [Insert function]
RULES: Use [target language] syntax, aim for full branch coverage.
```

### Variant B: Failing Test Exploration

```
TASK: Generate at least one test case that exposes a flaw or limitation.
CONTEXT: [Insert function]
RULES: Include justification and the expected incorrect output.
```

### Variant C: CI-Ready Test Suite

```
TASK: Produce a test suite compatible with [e.g., pytest, JUnit].
CONTEXT: [Insert code module]
RULES: Include setup/teardown if needed, mock external calls.
```

---

## Practical Considerations

* **Ambiguity Handling**: LLMs may hallucinate outputs if the function behavior is undefined or ambiguous.
* **Error Injection**: Prompting for invalid input tests requires specific phrasing.
* **Test Density**: Avoid overloading a single prompt; chain requests if needed.

---

## Related Files

* Operational Prompt: `test-scenarios.md`
* Index Entry: `prompt-templates-index.md`

---

This guide is part of the **LLM + VSCode Optimizer** project and supports reproducible prompt design for test generation workflows.

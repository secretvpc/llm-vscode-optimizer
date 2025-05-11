# Prompt Engineering Guide

This module introduces practical methods for designing effective prompts when working with Large Language Models (LLMs). It provides prompt types, structure conventions, and formatting strategies to ensure predictable, reproducible results.

It underpins all workflows in the **LLM + VSCode Optimizer** project.

---

## Purpose

To enable precise and structured interaction with LLMs by teaching prompt formulation techniques. This supports clarity, modular reuse, and integration with templates across code generation, debugging, testing, and documentation.

---

## Prompt Types and Use Cases

| Type        | Description                         | Example Prompt                                  |
| ----------- | ----------------------------------- | ----------------------------------------------- |
| Instruction | Direct task request                 | "Write a bash script to clean temp files"       |
| Completion  | Request continuation of input       | "The following API spec describes..."           |
| Rewrite     | Rephrase or simplify existing input | "Summarize this method in plain English"        |
| QA          | Ask questions from structured input | "What is the expected output of this function?" |
| Codegen     | Generate code/config from a spec    | "Create a Dockerfile for a Python Flask app"    |

---

## Prompt Structure

A structured prompt reduces ambiguity and improves reproducibility. The recommended format is:

```text
TASK:
  Describe the goal clearly.

CONTEXT:
  Provide source code, configuration, or data.

RULES:
  Define constraints, output format, or tools to use.
```

Example:

```text
TASK: Generate a Python function that parses ISO 8601 timestamps
CONTEXT: N/A
RULES: Use `datetime.fromisoformat`; raise exception on failure
```

---

## Structural Best Practices

* **Use consistent sections** (`TASK`, `CONTEXT`, `RULES`, `OUTPUT`)
* **Keep prompts declarative** — avoid ambiguous language
* **Reference models or syntax explicitly** (e.g., “Use Python 3.10+”)
* **Decompose** complex tasks into smaller sequential prompts
* **Version** critical prompts with filenames (e.g. `refactor-v2.md`)

---

## Integration with Templates

Prompt structures are implemented in:

* `examples/prompt-templates/`
* `code-generation.md`, `debugging-with-ai.md`
* `test-scenarios.md`, `assistant-interaction.md`

Use these references to locate ready-to-use prompts for real scenarios.

---

## Location

```
docs/workflows/prompt-engineering.md
```

This guide is foundational to all LLM-driven workflows in this project.

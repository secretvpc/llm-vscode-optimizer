# Code Generation Workflow

This module documents the use of Large Language Models (LLMs) for automated code generation. It describes task patterns, prompt structures, and reproducible strategies to generate functions, modules, and configuration files within Visual Studio Code.

---

## Purpose

To leverage LLMs for rapid code authoring in a structured and repeatable manner. Applicable to full-stack development, DevOps workflows, and templated configuration scenarios.

---

## Supported Use Cases

| Task Type          | Description                                 | Example Output                         |
| ------------------ | ------------------------------------------- | -------------------------------------- |
| Function Stubbing  | Generate a function body from its signature | `def fetch_data(url): ...`             |
| Module Scaffolding | Create reusable utility modules             | `utils/filesystem.py`, `api/client.ts` |
| Config Generation  | Generate structured files (YAML/JSON/TOML)  | Dockerfile, Kubernetes manifests       |
| Pseudocode Mapping | Translate specs into actual implementation  | From docstring to Python code          |
| Legacy Rewrite     | Regenerate old code with modern syntax      | Python 2 → 3, ES5 → ES6                |

---

## Prompt Strategy

Use prompt templates with the following structure:

```text
TASK: Generate a function that performs a GET request and retries on failure
CONTEXT:
- Use Python 3
- Use the `requests` library
RULES:
- Include docstring and exception handling
```

For configurations:

```text
TASK: Generate a Kubernetes deployment YAML
CONTEXT:
- Image: nginx:1.25
- Expose on port 80
RULES:
- Follow K8s schema, add `readinessProbe`
```

---

## Workflow Steps

1. Identify target output (function, module, config)
2. Prepare prompt using structured format (`TASK`, `CONTEXT`, `RULES`)
3. Use browser-based or extension-based ChatGPT session
4. Review and validate generated output
5. Refactor or modularize as needed
6. Version final output or convert into a reusable prompt

---

## Integration

* Works with `prompt-templates/code-refactoring.md`
* Compatible with CodeGPT or browser-based ChatGPT Pro+
* Output files can be auto-inserted via VSCode tasks

---

## Location

```
docs/workflows/code-generation.md
```

This module complements:

* `prompt-engineering.md`
* `examples/prompt-templates/`
* `docs/best-practices/productivity-tips.md`

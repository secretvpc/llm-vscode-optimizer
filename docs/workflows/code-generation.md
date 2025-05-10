# Code Generation

This workflow guide describes how to use Large Language Models (LLMs) to generate high-quality, maintainable code within a structured and reproducible development environment.

---

## 1. Overview

LLMs such as ChatGPT or Codex can accelerate software development by:

* Generating function bodies and modules
* Scaffolding boilerplate code
* Creating configuration files (e.g. YAML, JSON)
* Translating pseudocode to real implementations
* Documenting and refactoring legacy code

---

## 2. Use Cases & Task Types

| Task Type          | Description                                 | Example                           |
| ------------------ | ------------------------------------------- | --------------------------------- |
| Snippet Generation | Create reusable code blocks                 | Regex parser for filenames        |
| Full Function      | Generate a complete function from docstring | HTTP request handler              |
| Module Scaffolding | Generate module/file boilerplate            | `utils/io.py` for file operations |
| Configuration      | Generate structured config files            | Kubernetes YAML, JSON schema      |
| Translation        | Convert code between languages              | Python → Bash, JS → TS            |

---

## 3. Prompt Strategies

Use structured, domain-specific prompts for clarity and reproducibility:

```text
TASK: Generate a Python function that parses dates in YYYY-MM-DD format
CONSTRAINTS:
- Use `datetime.strptime`
- Raise exception if invalid format
OUTPUT FORMAT: Python code only
```

> 🧠 Store reusable prompt templates in `examples/prompt-templates/`

---

## 4. Tool Integration (VSCode)

Use extensions like:

* **CodeGPT**: inline prompt-based generation
* **GitHub Copilot**: suggestive typing based on context
* **ChatGPT Assistant**: side panel + command palette

To trigger generation:

* Use comment-based prompts: `# generate: function to hash password`
* Use inline selection + shortcut (`Cmd+I` or `Ctrl+I`, depending on extension)

---

## 5. Examples

### Input Prompt

```text
TASK: Generate a Bash script to compress `.log` files older than 7 days
```

### Output

```bash
#!/bin/bash
find /var/log -name "*.log" -type f -mtime +7 -exec gzip {} \;
```

---

## 6. Validation & Review

* 🔍 **Always review generated code manually**
* ✅ Run linters and formatters (e.g. `black`, `flake8`, `shellcheck`)
* 🧪 Create minimal tests to verify correctness
* 📖 Add docstrings and comments as needed

---

## 7. Best Practices

* Use consistent prompt structure
* Reuse well-tested prompt templates
* Isolate generations by file or function scope
* Validate outputs against requirements
* Avoid copy-paste of unreviewed completions

---

Code generation with LLMs is most powerful when paired with human oversight and domain understanding. Use these tools as assistants, not oracles.

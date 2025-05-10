# Prompt Templates Index

This index summarizes reusable prompt templates for LLM-assisted tasks in the **LLM + VSCode Optimizer** project. Each template is versionable, focused, and designed to maximize the precision and reproducibility of AI output.

---

## 📑 Available Templates

### 1. [Code Refactoring](code-refactoring.md)

Prompt template for refactoring functions and modules:

* Improve naming, modularity, and performance
* Follows structured TASK + CONTEXT + RULES format

### 2. [Documentation Generation](documentation-generation.md)

Prompt template for auto-generating technical documentation:

* Supports docstrings, Markdown, YAML, and Bash
* Includes formatting, tone, and language options

---

## 🔧 Usage Guidelines

* Use one template per task; avoid combining multiple unrelated objectives
* Modify and save variants using version suffixes (e.g. `refactor-v2.md`, `docgen-cli.md`)
* Store custom prompt libraries under `examples/prompt-templates/`

---

📁 Location: `examples/prompt-templates/`

Templates maintained as part of the structured AI interaction toolkit in this project.

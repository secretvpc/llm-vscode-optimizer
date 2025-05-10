# Prompt Templates Index

This directory contains versioned, reusable prompt templates designed for deterministic and professional interactions with Large Language Models (LLMs) in the context of software development.

Each template follows a modular structure based on the following format:

```
TASK:
  Clearly define the objective of the LLM interaction.

CONTEXT:
  Provide technical background, code snippets, or system state.

RULES:
  Outline expected constraints, formatting, or style guidelines.
```

---

## Available Templates

Each template includes both a conceptual guide and an operational prompt. Below is a summary of their purpose and application domains.

### 1. Code Refactoring

**Files:**

* `code-refactoring-guide.md` — Conceptual overview, structure, examples, and refactoring types.
* `code-refactoring.md` — Operational prompt for LLMs, focused on applied refactoring of code snippets.

**Description:**

* Enhances readability and modularity
* Detects duplication, anti-patterns, and inefficiencies
* Supports multi-language source inputs

### 2. Documentation Generation

**Files:**

* `documentation-generation-guide.md` — Explanation of documentation styles, prompt formatting, and usage tips.
* `documentation-generation.md` — Structured prompt with real example and requirements for docstring generation.

**Description:**

* Generates docstrings, comments, or Markdown/YAML files
* Can be parameterized by tone, language, or style (e.g., academic, concise)
* Suitable for codebases lacking inline documentation

### 3. Assistant Interaction

**Files:**

* `assistant-interaction.md` — Prompt structures for real-time LLM interaction using ChatGPT Pro+ without API access.

**Description:**

* Interactive use of ChatGPT inside VSCode via extensions
* Suitable for air-gapped or session-based environments
* Tasks include refactoring, error explanation, and documentation

### 4. Test Case Generation

**Files:**

* `test-scenarios-guide.md` — Prompt formulation principles, variants, and best practices.
* `test-scenarios.md` — Template for generating structured test cases from function or module input.

**Description:**

* Produces unit and edge-case tests in pseudocode or target language
* Enables TDD and integration with CI workflows
* Highlights invalid inputs and expected exception handling

---

## Usage Instructions

1. Select the most relevant template based on the task category.
2. Use the guide file for orientation and prompt design rationale.
3. Use the operational file for direct interaction with LLMs.
4. When modifying prompts, version them using the following convention:

```
<base-name>-v<version>.md
```

Example:

```
documentation-generation-v2.md
```

---

For extended workflows, templates can be organized into subdirectories or maintained across branches with documentation for usage scope and intended outcomes.

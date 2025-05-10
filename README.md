# LLM + VSCode Optimizer

> Structured productivity workflows for AI-integrated development environments.

---

## Table of Contents

1. [Overview](#overview)
2. [System Requirements](#system-requirements)
3. [Project Structure](#project-structure)
4. [Installation & Setup](#installation--setup)
5. [Usage Scenarios](#usage-scenarios)
6. [Automation Scripts](#automation-scripts)
7. [Documentation](#documentation)
8. [References & Resources](#references--resources)
9. [Contributing](#contributing)
10. [License](#license)

---

## Overview

This project provides a reproducible, modular, and professional framework for maximizing developer productivity using Large Language Models (LLMs), such as ChatGPT Pro+, in conjunction with Visual Studio Code, within a Windows 11 + WSL2 + Ubuntu environment.

The framework encompasses setup guides, environment automation, AI-assisted workflows, prompt engineering conventions, and productivity best practices. It promotes the use of structured prompting (`TASK:`, `CONTEXT:`, `RULES:`) for deterministic and reusable LLM interactions.

---

## System Requirements

- Windows 11 with WSL2 enabled
- Ubuntu 22.04 LTS (recommended WSL distribution)
- Visual Studio Code with Remote - WSL extension
- ChatGPT Pro+ account (Web or API access)
- Bash or PowerShell for executing automation scripts

---

## Project Structure

```text
.vscode/               # VSCode settings and launch configurations
docs/                  # Structured documentation: setup, best practices, workflows
scripts/               # Automation scripts for system provisioning and integration
examples/
  └─ prompt-templates/ # Versionable LLM prompt templates
  └─ vscode-tasks/     # Predefined VSCode task configurations
resources/             # Curated reference material and tooling indexes
README.md              # This file
```

---

## Installation & Setup

The following automation scripts are provided for streamlined setup:

```bash
bash scripts/install-extensions.sh
bash scripts/setup-environment.sh
```

For manual configuration, refer to the modular documentation:

- [VSCode + AI Extensions](docs/setup/vscode-ai-extensions.md)
- [Windows 11 + WSL2 + Ubuntu Integration](docs/setup/windows11-wsl2-ubuntu.md)
- [ChatGPT Pro+ Configuration](docs/setup/chatgpt-pro-plus.md)

---

## Usage Scenarios

Documented workflows provide applied examples of LLM usage in daily development:

- [Prompt Engineering](docs/workflows/prompt-engineering.md)
- [Code Generation](docs/workflows/code-generation.md)
- [Debugging with AI](docs/workflows/debugging-with-ai.md)

Reusable prompt templates are located in:

```text
examples/prompt-templates/
```

---

## Automation Scripts

Automation support is provided via the following scripts:

- `install-extensions.sh` — Installs a curated set of AI-relevant Visual Studio Code extensions.
- `setup-environment.sh` — Provisions a minimal WSL2 Ubuntu development stack with common utilities (Zsh, Python, Node.js, Git, etc.).

Scripts are designed for idempotent execution and are intended to be run from the project root.

---

## Documentation

Structured documentation is maintained in the `docs/` directory:

- `setup/` — Environment provisioning modules
- `best-practices/` — Long-term AI productivity and integration strategies
- `workflows/` — Hands-on examples for AI-augmented development

Each module is self-contained and version-aware.

---

## References & Resources

The `resources/references/` directory contains annotated indexes of supporting materials:

- [Articles](resources/references/articles.md) — Prompt engineering, LLM usage patterns, and ChatGPT workflows
- [Tools](resources/references/tools.md) — Verified tooling for editor integration, API access, and automation

Contributions of new references are welcomed with annotated sources.

---

## Contributing

We welcome contributions in the following areas:

- AI workflow modules and structured use cases
- Improved or extended prompt templates
- Reference tools and curated reading lists

All contributions should follow project formatting and structural conventions. Please submit via pull request with explanatory commit messages.

---

## License

This project is distributed under the terms of the MIT License. See `LICENSE` for full details.

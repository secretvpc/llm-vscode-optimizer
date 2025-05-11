# Setup Module Index

This index documents the structure and purpose of the setup layer in the **LLM + VSCode Optimizer** project. It provides a unified entry point into system preparation, environment configuration, and integration of key AI tooling.

Each module below is designed to be modular, reproducible, and compatible with WSL2-based workflows in Visual Studio Code.

---

## Included Modules

### 1. [Windows 11 + WSL2 + Ubuntu](windows11-wsl2-ubuntu.md)

* Enables WSL2 on Windows 11
* Installs Ubuntu 22.04 LTS via Microsoft Store
* Prepares Linux development environment with PowerShell + Ubuntu
* Verifies correct installation and resolves common issues

### 2. [VSCode AI Extensions](vscode-ai-extensions.md)

* Lists and describes recommended VSCode extensions for LLM workflows
* Provides CLI install commands and workspace config (`extensions.json`)
* Offers guidance for combining prompt-based and inline AI tools

### 3. [ChatGPT Pro+ Configuration](chatgpt-pro-plus.md)

* Describes two access modes: browser (Pro+) and API
* Outlines session hygiene, token management, and extension usage
* Covers integration with CodeGPT and secure API key storage

### 4. [Scripts Overview](scripts-overview.md)

* Documents the usage of automation scripts:

  * `setup-environment.sh` — Ubuntu provisioning
  * `install-extensions.sh` — VSCode extension automation
* Details idempotent execution, CLI context, and execution order

---

## Usage Flow

1. Enable WSL2 and install Ubuntu
2. Launch Ubuntu terminal and provision environment with:

```bash
bash scripts/setup-environment.sh
```

3. Open VSCode in WSL and configure extensions:

```bash
bash scripts/install-extensions.sh
```

4. Configure ChatGPT Pro+ for browser or API workflows

---

## File Location

All files are located in:

```
docs/setup/
```

This setup module complements:

* `docs/workflows/` — hands-on applications
* `docs/best-practices/` — safe usage patterns
* `examples/prompt-templates/` — structured prompt reuse

Maintained as part of the **LLM + VSCode Optimizer** project.

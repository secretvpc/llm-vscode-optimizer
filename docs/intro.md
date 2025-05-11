# Setup Introduction

This guide introduces the setup section of the **LLM + VSCode Optimizer** project, helping users configure their local and remote environments to support AI-enhanced development workflows.

---

## Purpose

The `docs/setup/` section ensures reproducible, modular, and secure system preparation across the following layers:

* Operating System and WSL2
* Editor (VSCode)
* AI Access (ChatGPT Pro+ and API)
* Extensions and Productivity Enhancers

---

## Setup Modules

### 1. [Windows 11 + WSL2 + Ubuntu](windows11-wsl2-ubuntu.md)

Configure a modern development environment using WSL2 for optimal Linux compatibility.

### 2. [VSCode AI Extensions](vscode-ai-extensions.md)

Install and manage AI-relevant extensions using CLI, JSON, or UI-driven methods.

### 3. [ChatGPT Pro+ Integration](chatgpt-pro-plus.md)

Set up access to ChatGPT Pro+ (Web and API), including secure key handling and project scoping.

### 4. [Scripts Overview](scripts-overview.md)

Overview and execution instructions for the setup scripts used to provision Ubuntu (WSL2) and configure the VSCode environment.

---

## Execution Guidance

Each module can be run individually or chained together:

```bash
bash scripts/install-extensions.sh
bash scripts/setup-environment.sh
```

Run from the project root and inspect logs for status updates.

---

By using the setup framework, developers can onboard quickly, reproduce the AI-ready environment across machines, and align their tooling with the structured documentation that follows.

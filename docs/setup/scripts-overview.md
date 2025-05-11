# Setup Module: Scripts Overview

This document provides a technical overview of the setup scripts included in the LLM + VSCode Optimizer project. These scripts provision and configure both the development environment inside Ubuntu (via WSL2) and the Visual Studio Code editor used to interact with it.

---

## Scope

The scripts are designed for use in a dual-layer system consisting of:

* **Host:** Windows 11
* **Guest:** Ubuntu (via WSL2)

They assume that Windows Subsystem for Linux (WSL2) and VSCode Remote - WSL integration are already installed and operational.

---

## Script 1: `setup-environment.sh`

### Purpose

Provisions the Ubuntu environment running inside WSL2 with core developer tools.

### Target Environment

* Ubuntu 20.04/22.04 under WSL2

### Operations Performed

* Updates package list and upgrades base system
* Installs:

  * `zsh` (alternative shell)
  * `curl`, `git` (network and version control)
  * `python3`, `pip` (scripting)
  * `nodejs`, `npm` (frontend tooling)
* Sets Zsh as the default shell

### Invocation

```bash
bash scripts/setup-environment.sh
```

Must be run **inside WSL2**.

---

## Script 2: `install-extensions.sh`

### Purpose

Installs a curated set of Visual Studio Code extensions that enhance AI-assisted development.

### Target Environment

* Visual Studio Code running on Windows with Remote - WSL

### Extensions Installed

* GitHub Copilot
* CodeGPT
* ChatGPT Assistant (Gencay)
* IntelliCode
* TabNine

### Invocation

```bash
bash scripts/install-extensions.sh
```

Can be run from Windows Terminal or VSCode Terminal (Remote - WSL context assumed).

---

## Combined Usage

To fully initialize the project:

1. Launch Ubuntu via WSL2:

```bash
wsl
```

2. Run the environment setup script:

```bash
bash scripts/setup-environment.sh
```

3. Open VSCode from WSL:

```bash
code .
```

4. Run the extension install script:

```bash
bash scripts/install-extensions.sh
```

---

These scripts ensure a reproducible development environment aligned with the LLM + VSCode Optimizer methodology.

Location: `docs/setup/scripts-overview.md`

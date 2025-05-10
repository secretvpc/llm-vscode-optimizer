# LLM + VSCode Optimizer

> Achieving next-level productivity with AI-integrated development environments.

## Table of Contents

1. [Overview](#overview)
2. [System Requirements](#system-requirements)
3. [Project Structure](#project-structure)
4. [Installation & Setup](#installation--setup)
5. [Usage Scenarios](#usage-scenarios)
6. [Documentation](#documentation)
7. [Contributing](#contributing)
8. [License](#license)

## Overview

This project provides a structured and professional framework to achieve maximum productivity using Large Language Models (LLMs), such as ChatGPT Pro+, in combination with Visual Studio Code and its AI capabilities, within a Windows 11 + WSL2 + Ubuntu environment.

The framework includes setup guides, automation scripts, AI-assisted workflows, prompt engineering templates, and productivity best practices.

## System Requirements

* Windows 11 with WSL2 enabled
* Ubuntu 22.04 LTS (recommended WSL distribution)
* Visual Studio Code with remote extensions
* ChatGPT Pro+ account (browser-based or API)
* Bash or PowerShell for automation scripts

## Project Structure

```text
.vscode/               # Editor configuration (launch, settings)
docs/                  # Structured documentation (setup, best-practices, workflows)
scripts/               # Automation scripts for setup and integration
examples/              # Prompt templates and task automation examples
resources/             # External references, articles, and tool indexes
README.md              # This file
```

## Installation & Setup

Use the following scripts to automate environment preparation:

```bash
bash scripts/install-extensions.sh
bash scripts/setup-environment.sh
```

For manual setup, refer to the documentation:

* [VSCode + AI Extensions](docs/setup/vscode-ai-extensions.md)
* [Windows 11 + WSL2 + Ubuntu Integration](docs/setup/windows11-wsl2-ubuntu.md)
* [ChatGPT Pro+ Setup](docs/setup/chatgpt-pro-plus.md)

## Usage Scenarios

Explore the following documented workflows:

* [Prompt Engineering](docs/workflows/prompt-engineering.md)
* [Code Generation](docs/workflows/code-generation.md)
* [Debugging with AI](docs/workflows/debugging-with-ai.md)

Prompt templates are available in `examples/prompt-templates/`.

## Documentation

All structured documentation can be found under the `docs/` directory:

* `setup/` — environment preparation
* `best-practices/` — AI productivity strategies
* `workflows/` — hands-on examples for daily use

## Contributing

Contributions are welcome. Please open an issue or submit a pull request with clear descriptions and consistent formatting.

## License

This project is licensed under the MIT License.

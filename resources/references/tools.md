# Reference Tools and Extensions

This document catalogues verified tools, extensions, and command-line utilities that enhance AI-assisted workflows in Visual Studio Code and supporting environments. It is part of the `resources/references/` module and complements prompt engineering and setup documentation.

---

## 1. Visual Studio Code Extensions

| Name              | Link                                                                                                                                                           | Description                                     |
| ----------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------- |
| GitHub Copilot    | [https://copilot.github.com](https://copilot.github.com)                                                                                                       | AI pair programming via OpenAI Codex            |
| Codeium           | [https://codeium.com](https://codeium.com)                                                                                                                     | Free AI autocomplete supporting 70+ languages   |
| Tabnine           | [https://www.tabnine.com](https://www.tabnine.com)                                                                                                             | Predictive completion using local/cloud models  |
| ChatGPT Assistant | [https://marketplace.visualstudio.com/items?itemName=gencay.vscode-chatgpt](https://marketplace.visualstudio.com/items?itemName=gencay.vscode-chatgpt)         | ChatGPT-based sidebar assistant for VSCode      |
| CodeGPT           | [https://marketplace.visualstudio.com/items?itemName=DanielSanMedium.dscodegpt](https://marketplace.visualstudio.com/items?itemName=DanielSanMedium.dscodegpt) | Prompt-based LLM interface with API key support |

Use when integrating LLMs into the development editor experience.

---

## 2. CLI and API Clients

| Tool       | Link                                                                               | Description                           |
| ---------- | ---------------------------------------------------------------------------------- | ------------------------------------- |
| OpenAI CLI | [https://github.com/openai/openai-python](https://github.com/openai/openai-python) | Python SDK for OpenAI API interaction |
| ShellGPT   | [https://github.com/TheR1D/shell\_gpt](https://github.com/TheR1D/shell_gpt)        | Terminal-based GPT querying via CLI   |

Useful for automating prompt interactions or embedding LLMs in scripts.

---

## 3. Testing and Validation Tools

| Tool       | Link                                                                                     | Description                                   |
| ---------- | ---------------------------------------------------------------------------------------- | --------------------------------------------- |
| Pydocstyle | [http://www.pydocstyle.org/en/stable/](http://www.pydocstyle.org/en/stable/)             | Docstring linter for Python                   |
| Shellcheck | [https://www.shellcheck.net/](https://www.shellcheck.net/)                               | Static analysis and linting for shell scripts |
| Yamllint   | [https://yamllint.readthedocs.io/en/stable/](https://yamllint.readthedocs.io/en/stable/) | YAML configuration validation                 |

Recommended for maintaining quality and style consistency in code and prompts.

---

Each tool listed is compatible with the workflows defined in `docs/workflows/`, `examples/prompt-templates/`, and `docs/setup/`.

To propose additions, submit a pull request with a short description, verified link, and justification for inclusion.

Location: `resources/references/tools.md`

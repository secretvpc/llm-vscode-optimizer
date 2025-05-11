# VSCode AI Extensions

This setup guide outlines the recommended Visual Studio Code extensions that enhance AI-assisted development workflows using Large Language Models (LLMs) such as ChatGPT, GPT-4, and related tooling.

---

## Purpose

To provide a curated list of extensions that integrate LLM functionality directly into the Visual Studio Code environment and support prompt-based, inline, and contextual AI interaction.

These extensions improve code generation, documentation, debugging, and interaction workflows within `llm-vscode-optimizer`.

---

## Recommended Extensions

| Extension Name    | Identifier                               | Description                                                   |
| ----------------- | ---------------------------------------- | ------------------------------------------------------------- |
| GitHub Copilot    | `GitHub.copilot`                         | Inline code suggestions powered by OpenAI Codex               |
| CodeGPT           | `DanielSanMedium.dscodegpt`              | Prompt-based interface supporting API key configuration       |
| ChatGPT Assistant | `gencay.vscode-chatgpt`                  | Sidebar and palette interface to ChatGPT Pro+ (browser-based) |
| IntelliCode       | `VisualStudioExptTeam.vscodeintellicode` | Enhanced IntelliSense recommendations based on code patterns  |
| Tabnine           | `TabNine.tabnine-vscode`                 | Local and cloud AI-powered code completion engine             |

These extensions can be used independently or in combination depending on your preferred interaction model (inline, command palette, chat window).

---

## Installation Methods

### A. Manual Installation (via UI)

1. Open the VSCode Extensions sidebar (`Ctrl+Shift+X`)
2. Search for the extension name (from table above)
3. Click **Install**

### B. CLI Installation (via Terminal)

```bash
code --install-extension GitHub.copilot
code --install-extension DanielSanMedium.dscodegpt
code --install-extension gencay.vscode-chatgpt
code --install-extension VisualStudioExptTeam.vscodeintellicode
code --install-extension TabNine.tabnine-vscode
```

### C. Recommended Configuration (`.vscode/extensions.json`)

```json
{
  "recommendations": [
    "GitHub.copilot",
    "DanielSanMedium.dscodegpt",
    "gencay.vscode-chatgpt",
    "VisualStudioExptTeam.vscodeintellicode",
    "TabNine.tabnine-vscode"
  ]
}
```

---

## Usage Guidance

* Configure API keys (e.g. for OpenAI) via environment variables or secure storage
* Bind keyboard shortcuts for frequent AI interactions
* Tune extension-specific settings (response length, model version) via `settings.json`
* Combine Copilot (inline) with CodeGPT (structured prompts) for hybrid workflows

---

## Location

This file is located at:

```
docs/setup/vscode-ai-extensions.md
```

It complements the broader setup modules:

* `windows11-wsl2-ubuntu.md`
* `chatgpt-pro-plus.md`
* `scripts-overview.md`

All tools described are verified to be compatible with WSL2-based Ubuntu development environments.

---

## References

* [GitHub Copilot](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot)
* [CodeGPT](https://marketplace.visualstudio.com/items?itemName=DanielSanMedium.dscodegpt)
* [ChatGPT Assistant](https://marketplace.visualstudio.com/items?itemName=gencay.vscode-chatgpt)
* [IntelliCode](https://marketplace.visualstudio.com/items?itemName=VisualStudioExptTeam.vscodeintellicode)
* [Tabnine](https://marketplace.visualstudio.com/items?itemName=TabNine.tabnine-vscode)

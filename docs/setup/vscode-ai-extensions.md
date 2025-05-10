# Setup: VSCode AI Extensions

This guide outlines the recommended Visual Studio Code extensions that enhance AI functionality and productivity when working with Large Language Models (LLMs) such as ChatGPT.

## Recommended Extensions

| Extension                       | Identifier                               | Description                                                    |
| ------------------------------- | ---------------------------------------- | -------------------------------------------------------------- |
| GitHub Copilot                  | `GitHub.copilot`                         | AI pair programming using OpenAI Codex                         |
| CodeGPT                         | `DanielSanMedium.dscodegpt`              | Use ChatGPT via API or browser-based integration               |
| ChatGPT - Code & Text Assistant | `gencay.vscode-chatgpt`                  | Context-aware prompt interface and command palette integration |
| IntelliCode                     | `VisualStudioExptTeam.vscodeintellicode` | AI-assisted IntelliSense suggestions                           |
| Tabnine                         | `TabNine.tabnine-vscode`                 | AI auto-completion engine with local model support             |

## Installation Methods

### 1. Manual Installation (via VSCode UI)

1. Open the Extensions sidebar (`Ctrl+Shift+X`).
2. Search for each extension name listed above.
3. Click **Install**.

### 2. CLI Installation (recommended for automation)

Run the following commands:

```bash
code --install-extension GitHub.copilot
code --install-extension DanielSanMedium.dscodegpt
code --install-extension gencay.vscode-chatgpt
code --install-extension VisualStudioExptTeam.vscodeintellicode
code --install-extension TabNine.tabnine-vscode
```

### 3. Via `.vscode/extensions.json`

Create or modify the file `.vscode/extensions.json`:

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

## Usage Tips

* ⚡ Bind shortcuts for frequently used AI commands.
* 📌 Use tab-completion alongside inline suggestions to maintain coding flow.
* 🔐 If using API keys (e.g., for OpenAI), store them securely using environment variables or VSCode Secret Storage.
* 💡 Adjust extension settings in `settings.json` for response length, model version, or inline behaviors.

## References

* [GitHub Copilot](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot)
* [CodeGPT](https://marketplace.visualstudio.com/items?itemName=DanielSanMedium.dscodegpt)
* [ChatGPT Assistant](https://marketplace.visualstudio.com/items?itemName=gencay.vscode-chatgpt)
* [IntelliCode](https://marketplace.visualstudio.com/items?itemName=VisualStudioExptTeam.vscodeintellicode)
* [Tabnine](https://marketplace.visualstudio.com/items?itemName=TabNine.tabnine-vscode)

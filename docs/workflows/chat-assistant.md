# ChatGPT Pro+ as Inline Assistant

This module documents the use of ChatGPT Pro+ as a real-time assistant within Visual Studio Code, without requiring API access. It is suitable for browser-based usage and offline-compatible workflows.

---

## Purpose

To enable LLM-enhanced development productivity through direct interaction with ChatGPT Pro+ in VSCode. This approach provides:

* Prompt refinement and response iteration
* Context-aware help during code writing and debugging
* AI-assisted documentation and refactoring support

---

## Prerequisites

* ChatGPT Pro+ account with browser access
* Visual Studio Code installed
* Recommended VSCode extension:

  * `gencay.vscode-chatgpt` *(browser-based authentication)*
  * Alternatively: `DanielSanMedium.dscodegpt`

---

## Setup

1. Open VSCode
2. Install the extension via command:

   ```bash
   code --install-extension gencay.vscode-chatgpt
   ```
3. Launch the extension from the Command Palette:

   ```
   ChatGPT: Ask
   ```
4. Follow login instructions to link your ChatGPT Pro+ session (browser auth)

---

## Usage Examples

### 1. Code Refactoring Prompt

```text
TASK: Refactor the function to improve separation of concerns.
CONTEXT: [Paste your code block here]
OUTPUT: Side-by-side comparison or rewritten version.
```

### 2. Debugging Prompt

```text
TASK: Help identify the cause of this error.
CONTEXT: [Error message + stack trace + relevant code]
OUTPUT: Root cause explanation and suggested fix.
```

### 3. Documentation Generation

```text
TASK: Generate structured technical documentation.
CONTEXT: [Paste the module/class/function]
OUTPUT: Markdown documentation block.
```

---

## Advantages

* No API key required
* Secure for private repositories and offline setups
* Reuses session-based ChatGPT access
* Complements CLI- and script-based automation

---

## Limitations

* Browser login required each session (unless cached)
* No backend workflow automation
* Requires active internet unless pre-authenticated

---

## Location

* Source: `docs/workflows/chat-assistant.md`
* Prompt templates: `examples/prompt-templates/assistant-interaction.md`

---

This document is part of the **LLM + VSCode Optimizer** project and integrates with the setup, extension, and workflow modules.

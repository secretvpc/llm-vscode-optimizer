# ChatGPT Pro+ Configuration Guide

This document explains how to configure and use ChatGPT Pro+ in both browser and API modes. It supports modular and structured use of LLMs within `llm-vscode-optimizer`, covering authentication, session hygiene, extension integration, and reproducible workflows.

---

## Purpose

To provide a dual-mode strategy for working with ChatGPT Pro+:

* **Browser-based assistant** for live interaction and exploratory tasks
* **API-based integration** for automated prompts, scripted workflows, and extension support

---

## Access Modes

| Mode   | Interface                     | Use Case                                        |
| ------ | ----------------------------- | ----------------------------------------------- |
| Web UI | `https://chat.openai.com`     | Conversational workflows, rapid prototyping     |
| API    | `https://platform.openai.com` | Programmatic interaction, automation, scripting |

---

## A. Browser-Based Workflow (No API Key Required)

To create reproducible, domain-specific interaction sessions:

1. Use a dedicated browser profile (e.g. Chrome, Firefox Container)
2. Pin a tab with ChatGPT at `https://chat.openai.com/chat`
3. Title sessions with structured names (e.g. `opt-debug-session-01`)
4. Follow prompt scaffolding patterns using `TASK:`, `CONTEXT:`, `RULES:`
5. Avoid using AI outside scoped workflows

> Recommendation: Limit browser extensions and track session boundaries manually.

---

## B. API-Based Workflow (Structured Automation)

### 1. Generate an API Key

* Go to: [OpenAI API Keys](https://platform.openai.com/account/api-keys)
* Generate a new secret key
* Store it securely:

```bash
export OPENAI_API_KEY="sk-..."
```

### 2. Use with Extensions (e.g., CodeGPT)

Example `settings.json` for CodeGPT:

```json
{
  "codegpt.apiKey": "${env:OPENAI_API_KEY}",
  "codegpt.provider": "openai",
  "codegpt.model": "gpt-4"
}
```

### 3. Use with CLI or Python

```bash
pip install openai
```

```python
import openai
openai.api_key = os.getenv("OPENAI_API_KEY")
response = openai.ChatCompletion.create(...)
```

---

## Integration with Visual Studio Code

Use one of the following extensions:

* [CodeGPT](https://marketplace.visualstudio.com/items?itemName=DanielSanMedium.dscodegpt)
* [ChatGPT Assistant](https://marketplace.visualstudio.com/items?itemName=gencay.vscode-chatgpt)

Configure access either via environment variables or extension settings. Use the Command Palette to trigger interaction or sidebar prompts.

---

## Recommended Practices

* Maintain separation of browser sessions by domain or task category
* Store structured prompts in `examples/prompt-templates/`
* Use named sessions and prompt tags for reproducibility
* Avoid exposing API keys in shell history or config files

---

## Troubleshooting

| Issue                     | Suggested Resolution                                      |
| ------------------------- | --------------------------------------------------------- |
| 429 Too Many Requests     | Use exponential backoff or switch to GPT-3.5 for fallback |
| Invalid API Key           | Regenerate key and ensure proper export or `.env` usage   |
| Session instability (Web) | Restart browser profile or use an isolated container      |

---

## Location

This document is located at:

```
docs/setup/chatgpt-pro-plus.md
```

It complements the following setup modules:

* `vscode-ai-extensions.md`
* `windows11-wsl2-ubuntu.md`
* `scripts-overview.md`

ChatGPT Pro+ can be treated as a standalone interface, integrated extension, or backend agent—depending on your workflow model.

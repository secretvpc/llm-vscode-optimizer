# Setup: ChatGPT Pro+

This guide outlines how to configure and use ChatGPT Pro+ accounts in a structured, reproducible, and isolated environment for professional workflows.

---

## 1. Overview: ChatGPT Pro+ Access Modes

ChatGPT Pro+ can be accessed in two main ways:

| Mode   | Interface           | Use Case                                                                        |
| ------ | ------------------- | ------------------------------------------------------------------------------- |
| Web UI | chat.openai.com     | Direct interaction via browser, best for conversational workflows               |
| API    | platform.openai.com | Programmatic access via tools or scripts (e.g. CodeGPT, LangChain, custom apps) |

---

## 2. Isolated Project Sessions (Browser-based)

To maximize contextual consistency and avoid cross-contamination between tasks:

* Use a **dedicated browser profile or container** (e.g. Firefox Containers, Chrome Profiles)
* Pin a tab with `https://chat.openai.com/chat`
* Structure your sessions with consistent naming (e.g. `llm-vscode-opt-01`, `opt-dev-debug`, etc.)
* Use internal documentation (e.g. pinned prompt context, conversation structure)

> 🔒 Keep browser plugins minimal to avoid interference.

---

## 3. API Access & Keys

To use ChatGPT via API:

1. Visit [https://platform.openai.com/account/api-keys](https://platform.openai.com/account/api-keys)
2. Generate a new secret API key.
3. Export securely in your shell or `.env` file:

```bash
export OPENAI_API_KEY="sk-..."
```

Use this with:

* [CodeGPT extension](https://marketplace.visualstudio.com/items?itemName=DanielSanMedium.dscodegpt)
* Custom scripts or apps (e.g. via `curl`, `openai` Python client)

---

## 4. Integration with VSCode

Recommended integration: **CodeGPT** or **ChatGPT Assistant** extensions.

For `CodeGPT`:

```json
{
  "codegpt.apiKey": "${env:OPENAI_API_KEY}",
  "codegpt.provider": "openai",
  "codegpt.model": "gpt-4"
}
```

Configure this in `.vscode/settings.json` or your VSCode user settings.

---

## 5. Usage Recommendations

* 🧠 Maintain domain-specific sessions (debugging, writing, refactoring)
* 📁 Store reusable prompts in `examples/prompt-templates/`
* 📄 Use structured prefixes in prompts (e.g. `TASK:`, `RULES:`, `CONTEXT:`)

---

## 6. Troubleshooting

* **429 Too Many Requests**: API limits exceeded → use exponential backoff or upgrade plan.
* **Invalid API key**: Double-check key formatting and shell export.
* **Web session instability**: Clear cookies or restart containerized session.

---

By treating ChatGPT Pro+ as a dedicated component in your toolchain—whether via browser or API—you ensure reproducibility, modularity, and maximum productivity.

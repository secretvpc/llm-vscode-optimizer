# Productivity Tips for AI-Augmented Development

This document presents structured strategies for enhancing developer productivity using Large Language Models (LLMs) within Visual Studio Code environments. The practices address focus management, task structuring, prompt reuse, and AI-powered acceleration of routine operations.

The guide is tailored for use with ChatGPT Pro+, CodeGPT, or similar tools integrated through extensions.

---

## Purpose

To offer reproducible, tool-agnostic practices for applying LLMs in software development workflows with an emphasis on cognitive efficiency, flow maintenance, and structured interaction.

---

## Daily Workflow Patterns

| Workflow Phase | LLM Usage Strategy                                              |
| -------------- | --------------------------------------------------------------- |
| Start of Day   | Generate task breakdowns, meeting summaries, or goal checklists |
| Mental Block   | Request explanations, reformulations, or contextual examples    |
| Midday Refocus | Use prompt templates to resume in-context code writing          |
| End of Day     | Summarize progress, generate commit messages, or draft reports  |

Maintain consistency through named prompt snippets and daily rituals.

---

## Prompt Efficiency Techniques

* Reuse modular prompt blocks with placeholders (`{{function}}`, `{{error}}`)
* Maintain a local prompt catalog using markdown or JSON
* Name prompt versions for version control (`docgen-v1`, `refactor-lite`)
* Apply structural tags: `TASK:`, `CONTEXT:`, `RULES:` to improve determinism

---

## Coding Flow Optimization

* Use LLMs for:

  * Boilerplate generation
  * Function stubbing
  * Test case generation
  * Refactoring and restructuring
* Minimize context switching by invoking AI in situ (inline or palette-triggered)
* Track time saved or operations offloaded as productivity metrics

---

## VSCode Integration Tips

| Feature                     | Usage Recommendation                                             |
| --------------------------- | ---------------------------------------------------------------- |
| Command Palette Shortcuts   | Bind frequent AI actions like "Explain Code" or "Refactor Block" |
| Inline Comments as Triggers | Use tags such as `# generate: docstring` or `# ask: optimize`    |
| Extensions                  | Configure `.vscode/extensions.json` with productivity enhancers  |
| Side Panel Utility          | Keep ChatGPT/CodeGPT panel open for ongoing dialogue             |

---

## Best Practices

* Log high-impact LLM prompts and reuse them across sessions
* Use structured reviews for all generated code or docs
* Avoid overdependence by interleaving manual review and AI outputs
* Schedule dedicated "AI blocks" for batch assistance (not ad-hoc multitasking)

---

This guide is part of the `docs/best-practices/` module and complements workflow-specific instructions found in `docs/workflows/` and prompt structures in `examples/prompt-templates/`.

Location: `docs/best-practices/productivity-tips.md`

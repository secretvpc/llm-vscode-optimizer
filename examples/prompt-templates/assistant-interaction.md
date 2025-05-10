# Prompt Templates: ChatGPT Pro+ Assistant Interaction

This document provides reusable prompt templates for working with ChatGPT Pro+ as an inline assistant inside Visual Studio Code. Prompts follow the standardized structure used throughout the project.

---

## Template 1: Refactor Code

```
TASK: Refactor the function to follow separation of concerns and improve readability.
CONTEXT:
[Insert function code here]
OUTPUT:
- Refactored code block
- Explanation of changes
```

## Template 2: Explain Error

```
TASK: Explain the error and suggest possible resolutions.
CONTEXT:
[Insert error message, stack trace, and code snippet]
OUTPUT:
- Error analysis
- Diagnostic reasoning
- Suggested fix or workaround
```

## Template 3: Generate Documentation

```
TASK: Generate structured documentation for the given function/module.
CONTEXT:
[Insert code here]
OUTPUT:
- Markdown-formatted documentation block
- Brief summary of purpose and parameters
```

## Template 4: Suggest Test Cases

```
TASK: Suggest edge and unit test cases for this function.
CONTEXT:
[Insert function or module code]
OUTPUT:
- List of test cases with input/output pairs or logical assertions
```

---

These templates are intended to be copy-pasted into the ChatGPT extension interface and customized as needed.

Location: `examples/prompt-templates/assistant-interaction.md`

# Debugging with AI Workflow

This module outlines how to use Large Language Models (LLMs) to assist in identifying, analyzing, and resolving software defects. It defines workflows for capturing error context, formulating prompts, and validating AI-generated fixes.

The approach integrates LLMs such as ChatGPT Pro+ or CodeGPT into development and testing environments.

---

## Purpose

To reduce diagnostic effort and improve code quality by using LLMs for:

* Interpreting error messages and stack traces
* Suggesting root causes and code changes
* Rewriting problematic code snippets for clarity and correctness

---

## Debugging Workflow

1. **Reproduce** the issue with minimal steps
2. **Capture** the error context:

   * Stack trace
   * Input values
   * Affected code
3. **Minimize** the code block to isolate the problem
4. **Formulate** a prompt using structured tags:

```text
TASK: Explain and resolve this error
CONTEXT:
def divide(x, y):
    return x / y
print(divide(10, 0))
ERROR:
ZeroDivisionError: division by zero
RULES:
- Suggest a fix with error handling
```

5. **Run** the prompt in your preferred LLM interface
6. **Apply** the fix and retest the scenario
7. **Review** for regressions or side effects

---

## Common Prompt Patterns

| Scenario                | Prompt Template Snippet                                       |
| ----------------------- | ------------------------------------------------------------- |
| Division by zero        | Include trace and logic — request fix with fallback mechanism |
| List index out of range | Provide loop logic — ask for validation guards                |
| Infinite loop           | Show condition — ask to suggest break clause                  |
| Mutating in loop        | Ask to explain skipped elements or index drift                |

---

## Best Practices

* Use focused, minimal code examples in prompts
* Include exact error output to guide the model
* Use `TASK`, `CONTEXT`, `RULES` formatting to avoid ambiguity
* Log before/after states if debugging complex side effects

---

## Integration

* Use with `prompt-templates/code-refactoring.md` for cleanup
* Supports both browser-based and API-powered LLM tools
* Debugging outputs can be piped into VSCode tasks or test scripts

---

## Location

```
docs/workflows/debugging-with-ai.md
```

This module complements:

* `code-generation.md`
* `prompt-engineering.md`
* `best-practices/productivity-tips.md`

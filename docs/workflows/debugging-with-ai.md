# Debugging with AI

This workflow guide shows how to leverage Large Language Models (LLMs) like ChatGPT to identify, analyze, and resolve bugs more efficiently in a development context.

---

## 1. Overview

LLMs can assist developers with:

* Interpreting error messages and stack traces
* Suggesting likely causes of bugs
* Recommending code changes to fix errors
* Explaining edge-case behaviors
* Detecting anti-patterns in logic or structure

---

## 2. Debugging Workflow with LLMs

1. **Reproduce** the issue in a controlled environment
2. **Capture** the relevant error messages, stack trace, and code block
3. **Isolate** the minimal code causing the error
4. **Query** the LLM with a focused prompt
5. **Apply** recommended changes and retest
6. **Review** fixes for side effects or regressions

---

## 3. Prompt Examples

```text
TASK: Diagnose the following Python error
CODE:
---
def divide(x, y):
    return x / y

print(divide(10, 0))
---
ERROR:
ZeroDivisionError: division by zero
```

```text
TASK: Explain why the loop skips elements
CODE:
for i in range(len(arr)):
    if arr[i] == 0:
        arr.pop(i)
```

> 🎯 Provide clear, minimal, and focused code + error context

---

## 4. Common Error Types & Patterns

| Type        | Example                                  | LLM Role                          |
| ----------- | ---------------------------------------- | --------------------------------- |
| Runtime     | `TypeError`, `KeyError`, `NullReference` | Explain cause, suggest fix        |
| Logic       | Incorrect result/output                  | Analyze intent vs. implementation |
| Performance | Inefficient loop, N+1 queries            | Suggest optimization              |
| Environment | ImportError, Dependency mismatch         | Check version compatibility       |

---

## 5. VSCode Integration

Use extensions like:

* **CodeGPT**: inline prompts (e.g. "why does this function fail?")
* **ChatGPT Assistant**: interactive debugging discussion

You can:

* Select error block → Run prompt
* Use comment `# debug:` followed by issue description

---

## 6. Validation

* ✅ Re-run failing test cases
* 🔁 Test related modules for regressions
* 📊 Profile performance after changes
* 🧪 Add missing edge-case tests

---

## 7. Best Practices

* Keep prompts scoped to minimal reproducible examples
* Include both code and output/error trace
* Rephrase or refine prompts if responses are generic
* Avoid over-relying on AI without confirming side effects
* Document AI-suggested changes in commit messages

---

AI-enhanced debugging allows faster iteration and better understanding—but always validate the solution and test comprehensively.

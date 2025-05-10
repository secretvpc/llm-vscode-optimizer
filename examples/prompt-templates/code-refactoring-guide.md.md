# Prompt Template: Code Refactoring

Use this structured prompt to ask LLMs (e.g., ChatGPT, CodeGPT) to refactor existing code for readability, performance, modularity, or stylistic improvements.

---

##  Prompt Structure

```text
TASK: Refactor the following code
CONTEXT:
<insert code here>
RULES:
- Improve readability and naming
- Remove duplicate logic
- Follow idiomatic style for language X
OUTPUT FORMAT: Return only the updated code block
```

---

##  Example

### Input Prompt

```text
TASK: Refactor the following code
CONTEXT:

def calc(x):
    if x == 1:
        return 3
    elif x == 2:
        return 6
    elif x == 3:
        return 9
    else:
        return 0

RULES:
- Use dictionary mapping
- Make function name more descriptive
```

### Output

```python
def compute_multiplier(x):
    return {
        1: 3,
        2: 6,
        3: 9
    }.get(x, 0)
```

---

##  Refactoring Types

| Category             | Description                                    |
| -------------------- | ---------------------------------------------- |
| Naming               | Rename variables and functions for clarity     |
| Logic Simplification | Replace nested logic with cleaner alternatives |
| Performance          | Optimize loops, remove redundant operations    |
| Modularity           | Extract reusable functions, reduce scope       |
| Style                | Conform to formatting and idioms               |

---

##  Usage Tips

* Focus prompts on a single function or module
* Include rules only when needed (avoid overloading)
* Always manually review and test the result

📁 Save reusable prompt templates in `examples/prompt-templates/` with version suffixes (`refactor-v1.md`, `refactor-v2.md`).

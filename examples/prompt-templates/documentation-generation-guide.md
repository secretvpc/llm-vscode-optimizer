# Prompt Template: Documentation Generation

Use this structured prompt to generate technical documentation for code, scripts, APIs, or workflows using LLMs such as ChatGPT.

---

##  Prompt Structure

```text
TASK: Generate documentation for the following code
INPUT:
<insert code here>
FORMAT: Google-style Python docstring / Markdown section / YAML block / Bash comment block
TONE: Technical / Beginner-friendly / Concise / Exhaustive
LANGUAGE: English (or specify another)
```

---

##  Example

### Input Prompt

```text
TASK: Document the following function
INPUT:

def add(x, y):
    return x + y
FORMAT: Google-style Python docstring
TONE: Technical
```

### Output

```python
def add(x, y):
    """
    Add two numeric values.

    Args:
        x (int | float): First operand.
        y (int | float): Second operand.

    Returns:
        int | float: The sum of x and y.
    """
    return x + y
```

---

##  Documentation Types

| Type        | Description                                                      |
| ----------- | ---------------------------------------------------------------- |
| Docstring   | Inline function/class documentation (e.g. Google, NumPy, PEP257) |
| Markdown    | Section-based docs for projects or modules                       |
| Bash/CLI    | Commented scripts or usage headers                               |
| YAML schema | Metadata or config documentation                                 |

---

##  Usage Tips

* Start with simple units (functions, CLI flags, parameters)
* Be explicit about format and tone
* Save reusable prompt templates for different languages/tools
* Pair doc generation with linting (`pydocstyle`, `yamllint`)

📁 Store and version templates in `examples/prompt-templates/` with naming like `docgen-v1.md`, `docgen-cli.md`.

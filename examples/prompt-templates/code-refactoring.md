# Prompt Template: Code Refactoring

## TASK

Refactor the provided source code to improve readability, modularity, and adherence to standard software engineering principles. Eliminate redundancies, clarify naming conventions, and ensure that the logic remains functionally equivalent.

## CONTEXT

The source code snippet is written in Python and is part of a utility module for file processing. The existing function lacks proper separation of concerns and includes hardcoded parameters.

```python
def process_files(file_list):
    for file in file_list:
        with open(file, 'r') as f:
            lines = f.readlines()
        new_lines = []
        for line in lines:
            if not line.startswith("#"):
                new_lines.append(line.strip().lower())
        with open(file, 'w') as f:
            for line in new_lines:
                f.write(line + "\n")
```

## RULES

- Use clear, descriptive function and variable names.
- Separate I/O operations from processing logic.
- Ensure the code is safe to run in-place on files (overwrite protection).
- Maintain compatibility with Python 3.8+.
- Format output using PEP8 standards.
- Do not introduce external dependencies.

---

Once the code is refactored, optionally annotate with docstrings and prepare for unit testing.

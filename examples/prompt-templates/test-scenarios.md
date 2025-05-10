# Prompt Template: Test Case Generation

This template is designed to assist developers in using LLMs to generate high-quality, structured test cases for functions, classes, or modules. The format supports both normal and edge-case testing, suitable for use in CI pipelines or test-driven development (TDD).

---

## Template Structure

```
TASK:
  Generate test cases for the provided function, covering normal, edge, and error-handling scenarios.

CONTEXT:
  [Insert code block here]

RULES:
  - Output should include structured test cases in pseudocode or a target language (e.g., Python, JavaScript).
  - Classify tests as 'Normal', 'Edge', or 'Invalid Input'.
  - Each test should include input, expected output, and brief explanation.
```

---

## Example Prompt

```
TASK:
  Generate test cases that validate the correctness of the following string reversal function.

CONTEXT:
  def reverse_string(s):
      return s[::-1]

RULES:
  - Use Python syntax
  - Cover empty strings, single characters, Unicode, and palindromes
  - Include at least one failing test with expected behavior
```

---

## Output Example

```python
# Normal Case
assert reverse_string("hello") == "olleh"  # Normal input

# Edge Cases
assert reverse_string("") == ""             # Empty string
assert reverse_string("a") == "a"           # Single character
assert reverse_string("абв") == "вба"       # Unicode input
assert reverse_string("madam") == "madam"   # Palindrome

# Invalid Input (Optional)
try:
    reverse_string(None)
except TypeError:
    pass  # Expected behavior
```

---

This prompt can be adapted for more complex structures such as class methods, asynchronous functions, or mathematical models. Extendable for use in unit testing frameworks.

Location: `examples/prompt-templates/test-scenarios.md`

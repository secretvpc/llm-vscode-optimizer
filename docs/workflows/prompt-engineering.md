# Prompt Engineering

This guide introduces structured methodologies for designing effective prompts when working with Large Language Models (LLMs).

---

## 1. What is Prompt Engineering?

Prompt engineering is the craft of designing input text to guide LLMs toward accurate, relevant, and deterministic output. It improves:

* Clarity of model interpretation
* Control over output format
* Reusability and consistency

---

## 2. Prompt Types & Use Cases

| Type        | Description                          | Example                                   |
| ----------- | ------------------------------------ | ----------------------------------------- |
| Instruction | Direct task request                  | "Write a bash script to clean temp files" |
| Completion  | Continue a given text                | "The quick brown fox..."                  |
| Rewrite     | Rephrase or restructure              | "Summarize this in one sentence:"         |
| QA          | Ask questions from text or context   | "What are the 3 key benefits?"            |
| Codegen     | Generate function, module, or config | "Create a YAML for nginx reverse proxy"   |

---

## 3. Prompt Structure

A well-structured prompt should include:

```text
TASK: What you want the model to do
CONTEXT: Optional background or input data
CONSTRAINTS: Style, format, scope, limitations
OUTPUT FORMAT: Desired structure (e.g. JSON, Markdown)
```

### Example

```text
TASK: Generate a Python function to validate email addresses
CONSTRAINTS:
- Must use regex
- Return True/False only
OUTPUT FORMAT: Python code only
```

---

## 4. Before vs. After Examples

**Before**

```text
Write code for email validation
```

**After**

```text
TASK: Validate email using regex in Python
OUTPUT: Return True/False only
```

---

## 5. Principles for Robust Prompt Design

* **Clarity**: Remove ambiguity, use explicit constraints
* **Determinism**: Reduce randomness via structure
* **Modularity**: Reuse standard prompt components
* **Layering**: Build from simple to complex tasks
* **Feedback Loop**: Refine based on model output

---

## 6. Tools & Templates

* 📁 `examples/prompt-templates/` – reusable prompt libraries
* 📄 `.prompt.md` – template format for documentation
* 🔄 Versioning prompts with `v1`, `v2` suffixes for iterative testing

---

## 7. Best Practices

* Use capitalized section headers (TASK, CONTEXT, etc.)
* Separate logic and formatting
* Test prompts on multiple examples
* Document prompt intent and expected output
* Use system prompts to set role/persona for multi-turn tasks

---

Prompt engineering bridges human intent and LLM interpretation. Effective prompts yield reliable, reproducible, and high-value outcomes.

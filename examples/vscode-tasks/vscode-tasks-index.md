# VSCode Tasks Index

This directory provides reusable Visual Studio Code task configurations to support automated and consistent workflows in the LLM + VSCode Optimizer project. Each task is defined using the `tasks.json` schema and can be triggered directly from the command palette or as part of a development sequence.

---

## Task Categories

### 1. Build and Run

**File:** `build-and-run.json`

**Purpose:**
- Executes a standard build process followed by application startup
- Relies on `Makefile` targets `build` and `run`

**Command:**
```bash
make build && make run
```

**Characteristics:**
- Uses the `shell` task type
- Allocates output to a shared terminal panel
- Can be bound to a shortcut or used as default build task

---

### 2. Test and Debug

**File:** `test-and-debug.json`

**Purpose:**
- Runs Python unit tests using `pytest`
- Can optionally be extended to invoke a debugger (e.g., `gdb`)

**Command:**
```bash
pytest
```

**Characteristics:**
- Includes support for the `$pytest` problem matcher
- Displays structured test results in the terminal
- Assignable to test task group in VSCode

---

## Usage Instructions

1. Copy the relevant task definition(s) into `.vscode/tasks.json`.
2. Adjust paths, file names, or commands if your environment differs.
3. Tasks can be launched via:
   - `Terminal → Run Task`
   - `Ctrl+Shift+P → Tasks: Run Task`
   - Programmatically, using preLaunchTask in `launch.json`

For large projects, group tasks by workspace or add descriptive labels for clarity.

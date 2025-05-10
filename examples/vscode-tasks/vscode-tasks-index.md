# VSCode Tasks Index

This index describes and links to reusable VSCode task configurations designed to support common development workflows in the **LLM + VSCode Optimizer** project.

---

## ⚙️ Available Tasks

### 1. [Build and Run](build-and-run.json)

* Runs `make build && make run`
* Requires a Makefile with defined targets
* Default build task, shared terminal output

### 2. [Test and Debug](test-and-debug.json)

* Executes Python tests via `pytest`
* Optionally launches `gdb` for debugging compiled binaries
* Uses `$pytest` problem matcher for test feedback

---

## 📁 Usage Instructions

Include these task files in `.vscode/tasks.json` or load them dynamically using workspace configurations.

You can run tasks via:

* `Ctrl+Shift+P → Run Task`
* VSCode `Terminal → Run Task`
* Command-line: `code --task ...`

---

📁 Location: `examples/vscode-tasks/`

These task definitions aim to accelerate development with clear separation of build, test, and debug logic.

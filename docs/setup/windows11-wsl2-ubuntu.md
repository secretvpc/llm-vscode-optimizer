# Windows 11 + WSL2 + Ubuntu Setup

This document outlines how to install and configure the Windows Subsystem for Linux version 2 (WSL2) with Ubuntu on Windows 11. It also covers integration with Visual Studio Code for a complete AI-ready development environment.

---

## Purpose

To establish a reproducible Linux-based development layer on Windows systems using WSL2 and Ubuntu 22.04 LTS. This configuration is required for running shell scripts, automation workflows, and integrating LLM tools with Visual Studio Code.

---

## System Requirements

* Windows 11 (Build 22000 or later)
* Admin access to PowerShell
* Internet connection for downloading packages
* Microsoft Store access

---

## Setup Steps

### 1. Enable WSL2 and Virtualization

Open **PowerShell as Administrator** and run:

```powershell
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

Then restart your computer.

---

### 2. Install Ubuntu from Microsoft Store

1. Open the **Microsoft Store**
2. Search for `Ubuntu 22.04 LTS`
3. Click **Install**

After installation, launch Ubuntu and create your user account.

---

### 3. Set WSL2 as the Default Version

```powershell
wsl --set-default-version 2
```

Check with:

```powershell
wsl --list --verbose
```

---

### 4. Initial Ubuntu System Update

In the Ubuntu terminal:

```bash
sudo apt update && sudo apt upgrade -y
```

Optional: Install developer packages with:

```bash
bash scripts/setup-environment.sh
```

---

### 5. Integrate with Visual Studio Code

1. Install the **Remote - WSL** extension in VSCode
2. Launch the Command Palette (`Ctrl+Shift+P`) and select:

```plaintext
Remote-WSL: New Window
```

3. This will open a VSCode session attached to the Ubuntu instance

---

## Troubleshooting

| Issue                           | Resolution                                                          |
| ------------------------------- | ------------------------------------------------------------------- |
| `wsl` command not found         | Ensure Windows 11 is up to date and restart after enabling features |
| Cannot install WSL2             | Enable Virtualization in BIOS/UEFI (VT-x/AMD-V)                     |
| `code .` not working inside WSL | Ensure VSCode is in system PATH and `Remote - WSL` is installed     |

---

## Verification

To verify your setup, run:

```powershell
wsl --list --verbose
```

You should see:

```plaintext
NAME      STATE           VERSION
Ubuntu    Running         2
```

---

## Location

This file is located at:

```
docs/setup/windows11-wsl2-ubuntu.md
```

It complements the other setup modules:

* `vscode-ai-extensions.md`
* `chatgpt-pro-plus.md`
* `scripts-overview.md`

The resulting environment supports all `llm-vscode-optimizer` workflows inside a Linux shell managed from within Windows.

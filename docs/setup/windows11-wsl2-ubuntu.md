# Setup: Windows 11 + WSL2 + Ubuntu

This guide explains how to configure a Windows 11 system with Windows Subsystem for Linux version 2 (WSL2) using Ubuntu as the preferred distribution. It also covers integration with Visual Studio Code.

---

## 1. Enable WSL2 and Virtualization Support

Open **PowerShell as Administrator** and run:

```powershell
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

Then restart your system.

---

## 2. Install Ubuntu from the Microsoft Store

1. Open the **Microsoft Store**.
2. Search for `Ubuntu 22.04 LTS` (recommended).
3. Click **Install**.

After installation, launch Ubuntu and create your user credentials.

---

## 3. Set WSL2 as Default Version

```powershell
wsl --set-default-version 2
```

To check WSL version:

```powershell
wsl --list --verbose
```

---

## 4. Integrate with Visual Studio Code

1. Install **[Remote - WSL](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl)** extension in VSCode.
2. Launch VSCode.
3. Open the command palette (`Ctrl+Shift+P`) and run:

   ```
   ```

Remote-WSL: New Window

````
4. You are now inside the WSL Ubuntu environment from within VSCode.

---

## 5. Initial Ubuntu Setup

Once inside Ubuntu:

```bash
sudo apt update && sudo apt upgrade -y
````

To install additional packages, you may use:

```bash
bash scripts/setup-environment.sh
```

---

## 6. Verify from PowerShell

Run:

```powershell
wsl --list --verbose
```

You should see:

```
NAME      STATE           VERSION
Ubuntu    Running         2
```

---

## 7. Troubleshooting

* ❗ `wsl` command not found:

  * Ensure Windows 11 is fully updated.
* ❗ Cannot install WSL2:

  * Check BIOS for **Virtualization (Intel VT-x / AMD-V)** and ensure it is enabled.
* ❗ `code .` not working inside WSL:

  * Ensure `Remote - WSL` extension is installed.
  * Ensure VSCode is in system `PATH` (via installation options).

---

You now have a complete and functional WSL2 development environment ready for AI-enhanced workflows.

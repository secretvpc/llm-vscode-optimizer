#!/bin/bash

# VSCode AI Extension Installer
# ---------------------------------
# This script installs a curated list of Visual Studio Code extensions
# that enhance AI-assisted development workflows.

set -e

# Check for VSCode CLI
if ! command -v code &> /dev/null; then
  echo "❌ VSCode 'code' command-line interface not found."
  echo "Please install VSCode and enable the 'code' CLI command."
  exit 1
fi

# Define extensions to install
extensions=(
  "GitHub.copilot"
  "DanielSanMedium.dscodegpt"
  "gencay.vscode-chatgpt"
  "VisualStudioExptTeam.vscodeintellicode"
  "TabNine.tabnine-vscode"
  "ms-python.python"
)

echo "🔧 Installing recommended VSCode AI extensions..."
for extension in "${extensions[@]}"; do
  echo "➤ Installing: $extension"
  code --install-extension "$extension" || echo "⚠️ Failed to install: $extension"
done

echo "✅ All extensions processed."

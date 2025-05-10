#!/bin/bash

# WSL2 Development Environment Setup Script
# ------------------------------------------
# This script prepares a minimal Ubuntu-based WSL2 environment
# for AI-enhanced development using Visual Studio Code + LLMs.

set -e

# Check for WSL2
if ! grep -qEi "microsoft" /proc/version; then
  echo "❌ This script is intended for WSL2 environments only."
  exit 1
fi

echo "🔧 Updating system packages..."
sudo apt update && sudo apt upgrade -y

echo "📦 Installing essential development tools..."
sudo apt install -y \
    git \
    curl \
    wget \
    unzip \
    build-essential \
    python3 \
    python3-pip \
    nodejs \
    npm \
    jq \
    zsh

# Optional: set zsh as default shell
if command -v zsh &> /dev/null; then
  echo "💡 Setting Zsh as default shell (optional)"
  chsh -s $(which zsh) || true
fi

# Optional: install Oh My Zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "✨ Installing Oh My Zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" || true
fi

echo "✅ Environment setup complete."

#!/bin/bash

# ─────────────────────────────────────────────
#  ZenCode Assistant — Setup Script
#  Mac / Linux
#  v1.7.3 — The Programmer Monk
# ─────────────────────────────────────────────

echo ""
echo "  ☯️  ZenCode Assistant — Setup"
echo "  ─────────────────────────────"
echo ""

# Step 1: Check if Ollama is installed
if ! command -v ollama &> /dev/null; then
    echo "  Presence: Ollama not found."
    echo "  Action: Installing Ollama automatically via curl..."
    echo "  ─────────────────────────────"
    echo ""
    
    # Official Ollama install script
    if curl -fsSL https://ollama.com/install.sh | sh; then
        echo ""
        echo "  ✓ Ollama installed successfully."
        echo ""
    else
        echo ""
        echo "  ✗ Automatic installation failed."
        echo "  Please download it manually from: https://ollama.com"
        echo "  Then run this script again."
        echo ""
        exit 1
    fi
else
    echo "  ✓ Ollama is already present."
fi

echo ""

# Step 2: Pull the base model
echo "  Acquisition: Pulling gemma3:4b (~3.3 GB)..."
echo "  Grab a coffee. This runs once. ☕"
echo ""

if ! ollama pull gemma3:4b; then
    echo ""
    echo "  ✗ Failed to pull gemma3:4b. Check your connection and try again."
    echo ""
    exit 1
fi

echo ""
echo "  ✓ gemma3:4b pulled successfully."
echo ""

# Step 3: Create ZenCode Assistant from the Modelfile
echo "  Creation: Building ZenCode-Assistant-v1.7.3..."

if ! ollama create zen_code -f Modelfile-ZenCode-Assistant; then
    echo ""
    echo "  ✗ Failed to create zen_code. Check the Modelfile and try again."
    echo ""
    exit 1
fi

# Step 3b: Verify the model actually exists in Ollama
if ! ollama list | grep -qi "zen_code"; then
    echo ""
    echo "  ✗ zen_code was not found in ollama list. Something went wrong."
    echo ""
    exit 1
fi

echo ""
echo "  ✓ Done. zen_code is here."
echo ""

# Step 4: Launch
echo "  Activation: Launching ZenCode Assistant..."
echo "  ─────────────────────────────"
echo ""
ollama run zen_code

#!/bin/bash

# Function to check and install a package if not present
install_if_missing() {
    local package_name="$1"
    local command_name="$2"

    echo "🔍 Checking for $package_name..."

    if ! command -v "$command_name" >/dev/null 2>&1; then
        echo "❌ $package_name is not installed. Installing..."
        sudo apt update
        sudo apt install -y "$package_name"
    else
        echo "✅ $package_name is already installed: $($command_name --version)"
    fi
}

# Check and install python3
install_if_missing "python3" "python3"

# Check and install nodejs
install_if_missing "nodejs" "node"

# Check and install npm
install_if_missing "npm" "npm"

echo "🎉 Dependency check completed."

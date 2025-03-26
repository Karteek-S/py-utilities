#!/bin/bash
set -e

PYTHON_VERSION="$1"

if ! command -v pyenv >/dev/null 2>&1; then
  echo "❌ pyenv is not installed or not in PATH"
  echo "ℹ️  Please install pyenv and restart your shell"
  exit 1
fi

echo "✅ pyenv check"

if ! pyenv versions --bare | grep -qx "$PYTHON_VERSION"; then
  echo "❌ Python $PYTHON_VERSION not installed in pyenv"
  exit 1
fi

echo "✅ Python $PYTHON_VERSION version check"
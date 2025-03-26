#!/bin/bash
set -e

PYTHON_VERSION="$1"
VENV_DIR="$2"

if [ ! -d "$VENV_DIR" ]; then
  echo "❌ No virtual environment found at $VENV_DIR"
  echo "👉 Run 'task setup' to create it"
  exit 1
fi

echo "✅ Found virtual environment at $VENV_DIR"

# If venv exists, check version
VENV_PY=$("$VENV_DIR/bin/python" --version 2>&1)
if [ "$VENV_PY" != "Python $PYTHON_VERSION" ]; then
  echo "⚠️ Python version mismatch in .venv"
  echo "   .python-version → Python $PYTHON_VERSION"
  echo "   .venv → $VENV_PY"
  echo "❌ To fix: run 'task clean setup'"
  exit 1
fi

echo "✅ Found virtual environment at $VENV_DIR and Python $PYTHON_VERSION version matched"
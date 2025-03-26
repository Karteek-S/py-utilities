#!/bin/bash
set -e

VENV_DIR="$1"

if [ -d "$VENV_DIR" ]; then
  echo "❌ Virtual environment already exists at $VENV_DIR"
  echo "⚠️  Refusing to overwrite it"
  echo "👉 Run 'task clean setup' to recreate the environment"
  exit 1
fi
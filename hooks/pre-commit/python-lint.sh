#!/bin/bash

# Lint Python files with flake8 before committing

echo "🔍 Running flake8 for Python linting..."

if ! command -v flake8 &> /dev/null; then
  echo "❌ flake8 not installed. Install it with: pip install flake8"
  exit 1
fi

flake8 .
STATUS=$?

if [ $STATUS -ne 0 ]; then
  echo "❌ Linting failed. Fix the above issues before committing."
  exit 1
fi

echo "✅ Linting passed!"


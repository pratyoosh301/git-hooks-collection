#!/bin/bash

# Copies all custom hooks into .git/hooks/

echo "🚀 Installing custom Git hooks..."

cp hooks/pre-commit/* .git/hooks/pre-commit
cp hooks/prepare-commit-msg/* .git/hooks/prepare-commit-msg
cp hooks/commit-msg/* .git/hooks/commit-msg
cp hooks/pre-push/* .git/hooks/pre-push

chmod +x .git/hooks/*

echo "✅ Hooks installed successfully!"


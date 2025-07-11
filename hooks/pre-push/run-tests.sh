#!/bin/bash

# Run test suite before allowing push

echo "🧪 Running test suite before push..."

if [ -f "pytest.ini" ] || ls tests/test_*.py &> /dev/null; then
  if ! command -v pytest &> /dev/null; then
    echo "❌ pytest not found. Install it with: pip install pytest"
    exit 1
  fi

  pytest
  if [ $? -ne 0 ]; then
    echo "❌ Tests failed. Push aborted."
    exit 1
  fi

  echo "✅ All tests passed. Proceeding with push."
else
  echo "⚠️ No tests found. Skipping test check."
fi


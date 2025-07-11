#!/bin/bash

# Validate commit message format: e.g., must start with a ticket ID

COMMIT_MSG_FILE=$1
COMMIT_MSG=$(head -n1 "$COMMIT_MSG_FILE")

# Require format like PROJ-123: message
if ! echo "$COMMIT_MSG" | grep -Eq "^[A-Z]+-[0-9]+: .+"; then
  echo "❌ Commit message must start with a ticket ID, e.g., PROJ-123: Your message"
  exit 1
fi

echo "✅ Commit message format looks good."


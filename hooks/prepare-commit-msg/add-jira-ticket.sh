#!/bin/bash

# Auto-prepend JIRA ticket to commit messages based on branch name

MSG_FILE=$1
COMMIT_SOURCE=$2

if [[ "$COMMIT_SOURCE" != "merge" && "$COMMIT_SOURCE" != "squash" ]]; then
  BRANCH_NAME=$(git rev-parse --abbrev-ref HEAD)

  if [[ "$BRANCH_NAME" =~ ([A-Z]+-[0-9]+) ]]; then
    TICKET="${BASH_REMATCH[1]}"
    sed -i.bak -e "1s/^/$TICKET: /" "$MSG_FILE"
  fi
fi


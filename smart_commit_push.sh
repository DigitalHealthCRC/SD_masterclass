#!/bin/bash
set -e

tr -d '\r' < /mnt/c/Users/Amir/.agents/skills/git-pushing/scripts/smart_commit.sh | \
  sed 's/git commit -m "$MESSAGE"/git commit -m "$MESSAGE" || true/' > /tmp/smart_commit_push_inner.sh

bash /tmp/smart_commit_push_inner.sh "$@"

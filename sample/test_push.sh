#!/bin/bash
set -e
git add .
git commit -m "testing" || true

git status

# Try normal push first
if ! git push; then
  echo "Push failed — pulling updates and rebasing..."
  git fetch origin
  git rebase origin/main
  git push
fi

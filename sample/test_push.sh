#!/bin/bash
set -e
git add .
git commit -m "testing"
git status
if ! git push; then
  git fetch origin
  git rebase origin/master
  git push
fi

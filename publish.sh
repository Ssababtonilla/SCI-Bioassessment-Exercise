#!/usr/bin/env bash
set -euo pipefail

if ! command -v git >/dev/null 2>&1; then
  echo "Error: git is not installed. Please install git and re-run."
  exit 1
fi

if [ $# -lt 1 ]; then
  echo "Usage: ./publish.sh <REPO_URL>"
  echo "Example: ./publish.sh git@github.com:OWNER/REPO.git"
  echo "         ./publish.sh https://github.com/OWNER/REPO.git"
  exit 1
fi

REPO_URL="$1"

git init
git add .
git commit -m "Initial commit: SCI bioassessment exercise"
git branch -M main
git remote add origin "$REPO_URL"
git push -u origin main

echo
echo "Done! Update README.md and CITATION.cff with your actual OWNER/REPO URL."
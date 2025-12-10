#!/bin/bash

# Git Commit Date Updater - Sets commit date to 2023-12-10 (2 years ago)

echo "Updating commit date to 2023-12-10..."

# Set the environment variables
export GIT_COMMITTER_DATE="2023-12-10 07:00:00 +0530"
export GIT_AUTHOR_DATE="2023-12-10 07:00:00 +0530"

# Amend the commit without changing the message
git commit --amend --no-edit

# Force push to update remote
git push origin main --force

echo "Done! Refresh GitHub to see the change (should show 2 years ago)"

# Quick verification
echo ""
echo "Latest commit:"
git log --oneline -1

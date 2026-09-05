#!/bin/bash
# This script updates PR #4 with the correct title and description to pass the workflow checks

PR_NUMBER=4
REPO="clararini/DOZ"
NEW_TITLE="Add my first file"
NEW_BODY="This pull request adds my first file to the repository and updates the profile with initial information."

# Using GitHub CLI to update the PR
gh pr edit $PR_NUMBER \
  --repo $REPO \
  --title "$NEW_TITLE" \
  --body "$NEW_BODY"

echo "✅ PR #4 updated successfully!"
echo "Title: $NEW_TITLE"
echo "Description: $NEW_BODY"
echo ""
echo "The workflow will automatically re-run and should now pass all checks."

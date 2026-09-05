#!/bin/bash
# Update PR #4 with correct title and description

curl -X PATCH \
  https://api.github.com/repos/clararini/DOZ/pulls/4 \
  -H "Authorization: token $GITHUB_TOKEN" \
  -H "Accept: application/vnd.github.v3+json" \
  -d '{
    "title": "Add my first file",
    "body": "This pull request adds my first file to the repository and updates the profile with initial information."
  }'

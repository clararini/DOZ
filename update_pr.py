import requests
import os

# GitHub API endpoint
REPO = "clararini/DOZ"
PR_NUMBER = 4
API_URL = f"https://api.github.com/repos/{REPO}/pulls/{PR_NUMBER}"

# PR update payload
payload = {
    "title": "Add my first file",
    "body": "This pull request adds my first file to the repository and updates the profile with initial information."
}

# Headers with authentication
headers = {
    "Accept": "application/vnd.github.v3+json",
    "Authorization": f"token {os.environ.get('GITHUB_TOKEN')}"
}

# Make the PATCH request
response = requests.patch(API_URL, json=payload, headers=headers)

if response.status_code == 200:
    print("✅ SUCCESS! PR #4 has been updated:")
    print(f"   Title: {payload['title']}")
    print(f"   Description: {payload['body']}")
    print("\n📋 The workflow will automatically re-run and pass all checks!")
else:
    print(f"❌ ERROR: Failed to update PR (Status: {response.status_code})")
    print(response.text)

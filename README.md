# Docker Sandbox
Summary: The docker sandbox is a convenient repository to clone when starting a new project.

## Prerequisites
1. Linux machine
2. root privileges

## Steps
```bash
NEW_PROJ_NAME=bectran-sandbox
GITHUB_NEW_USERNAME=wbmartin
GITHUB_BASE_REPO=docker-sandbox
git clone https://github.com/$GITHUB_BASE_USERNAME/$GITHUB_BASE_REPO $NEW_PROJ_NAME
cd $NEW_PROJ_NAME
git remote set-url --add origin https://github.com/$GITHUB_NEW_USERNAME/$NEW_PROJ_NAME
git remote set-url --delete origin https://github.com/$GITHUB_BASE_USERNAME/$GITHUB_BASE_REPO
git add *
git commit -a -m "Copied from https://github.com/$GITHUB_BASE_USERNAME/$GITHUB_BASE_REPO"

```

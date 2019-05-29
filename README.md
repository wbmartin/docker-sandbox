# Docker Sandbox
Summary: The docker sandbox is a convenient repository to clone when starting a new project.

## Prerequisites
1. Linux machine
2. root privileges

## Steps
```bash
NEW_PROJ_NAME=[insert-name-here]
git clone --bare https://github.com/wbmartin/docker-sandbox.git $NEW_PROJ_NAME
cd $NEW_PROJ_NAME
git push --mirror https://github.com/wbmartin/$NEW_PROJ_NAME
```

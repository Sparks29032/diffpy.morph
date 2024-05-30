#!/usr/bin/env sh
##!"C:\\Program Files\\Git\\usr\\bin\\bash.exe"

branch="$(git rev-parse --abbrev-ref HEAD)"

if [ "$branch" = "main" ] && [ -z "${GIT_DIR}/MERGE_MODE" ]; then
echo "You are on the main branch. Committing to the main branch is not allowed."
exit 1
fi

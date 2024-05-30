#!/usr/bin/env sh
##!"C:\\Program Files\\Git\\usr\\bin\\bash.exe"

branch=$(git rev-parse --abbrev-ref HEAD)

if [ "$branch" = "main" ]; then
	if [ ! -z ${GIT_DIR}/MERGE_MODE ]; then
		echo "Merge to main allowed."
	else
		echo "You are on the main branch. Committing to the main branch is not allowed."
		exit 1
	fi
fi

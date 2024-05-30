#!/usr/bin/env sh
##!"C:\\Program Files\\Git\\usr\\bin\\bash.exe"

branch=$(git rev-parse --abbrev-ref HEAD)

if [ "$branch" = "main" ]; then
	MERGE_HASH=$( git rev-parse -q --verify MERGE_HEAD 2> /dev/null)
	if [ ! -z $MERGE_HASH ]; then
		echo "Merge to main allowed."
	else
		echo "You are on the main branch. Committing to the main branch is not allowed."
		exit 1
	fi
fi

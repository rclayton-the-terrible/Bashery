#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Must be called using two arguments: [branch-type] [action]"
	exit 1
fi

BRANCH_TYPE=$1
ACTION=$2

# Get the current name of the branch (in non-list form)
branch=`git rev-parse --abbrev-ref HEAD`
# Extract the branch name
branch_flowname=${branch#"$BRANCH_TYPE/"}
# Publish the branch
echo "git flow $BRANCH_TYPE $ACTION $branch_flowname"
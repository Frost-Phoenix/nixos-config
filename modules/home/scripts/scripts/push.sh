#!/usr/bin/env bash

git_directory=$PWD/.git
if [[ -d $git_directory ]];then
    git add .
    read -p "Enter commit name: " commit_name
    git commit -m "$commit_name"
    git push
else
    echo "Git wasn't initialized here."
fi
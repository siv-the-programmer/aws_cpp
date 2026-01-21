#!/bin/bash

# Updated the script to add all files 

# Created to automate git add, commit, pull, and push

# List all files in current directory (excluding .git)
echo "Files in current directory:"
mapfile -t files < <(find . -maxdepth 1 -type f ! -name ".git*" -printf "%f\n")

# If no files found
if [[ ${#files[@]} -eq 0 ]]; then
  echo "No files found in this directory."
  exit 1
fi

# Display files with numbers
for i in "${!files[@]}"; do
  echo "$((i+1)). ${files[$i]}"
done
echo ".  -> Add all files"

# Ask user to pick a file or add all
read -r -p "Select the file number you want to upload (or '.' for all files): " choice

# Detect current branch automatically
branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
if [[ -z "$branch" ]]; then
  echo "Not a git repository or unable to detect branch."
  exit 1
fi

# Ask for commit message
read -r -p "Enter commit message: " commit_msg

# Pull latest changes
echo "Pulling latest changes from remote..."
git pull origin "$branch"

# Stage files
if [[ "$choice" == "." ]]; then
  git add .
  echo "All files staged."
else
  # Validate input
  if ! [[ "$choice" =~ ^[0-9]+$ ]] || (( choice < 1 || choice > ${#files[@]} )); then
    echo "Invalid choice."
    exit 1
  fi
  filename="${files[$((choice-1))]}"
  git add "$filename"
  echo "Staged file: $filename"
fi

# Commit and push
git commit -m "$commit_msg"
git push origin "$branch"

echo "Changes successfully committed and pushed to '$branch'!"

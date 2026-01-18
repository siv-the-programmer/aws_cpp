#!/bin/bash

# Git auto uploader with file picker
#-----------------------------------------
# Created this file so that i dont manually have to git add add git commit git pull and git push

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

# Ask user to pick a file
read -p "Select the file number you want to upload: " choice

# Validate input
if ! [[ "$choice" =~ ^[0-9]+$ ]] || (( choice < 1 || choice > ${#files[@]} )); then
  echo "Invalid choice."
  exit 1
fi

filename="${files[$((choice-1))]}"

# Ask for commit message
read -p "Enter commit message: " commit_msg

# Detect current branch automatically
branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
if [[ -z "$branch" ]]; then
  echo "Not a git repository or unable to detect branch."
  exit 1
fi

# Pull latest changes
echo "Pulling latest changes from remote..."
git pull origin "$branch"
git add "$filename"
git commit -m "$commit_msg"
git push origin "$branch"

echo "'$filename' successfully committed and pushed to '$branch'!"

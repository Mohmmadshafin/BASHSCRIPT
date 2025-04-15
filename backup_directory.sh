#!/bin/bash

# Ask for source directory
echo "Enter the directory you want to back up:"
read source_dir

# Check if directory exists
if [ ! -d "$source_dir" ]; then
  echo "Directory does not exist!"
  exit 1
fi

# Define backup name with timestamp
timestamp=$(date +"%Y%m%d_%H%M%S")
backup_file="backup_${timestamp}.tar.gz"

# Create backup
tar -czf "$backup_file" "$source_dir"
echo "Backup of $source_dir completed: $backup_file"

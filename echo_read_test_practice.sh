#!/bin/bash

echo "Enter a filename:"
read filename

if test -f "$filename"; then
  echo "$filename exists and is a regular file."
elif test -d "$filename"; then
  echo "$filename is a directory."
else
  echo "$filename does not exist."
fi

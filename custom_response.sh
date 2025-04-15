#!/bin/bash

echo "What is your name?"
read name

echo "Hello, $name! Nice to meet you."

echo "What’s your favorite programming language?"
read language

if [ "$language" = "Bash" ]; then
  echo "Awesome! You're already using Bash!"
else
  echo "$language is cool too!"
fi

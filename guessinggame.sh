#!/bin/bash

# Function to get the number of files in the current directory
get_file_count() {
    echo $(ls -1 | wc -l)
}

# Store the correct file count
correct_count=$(get_file_count)

# Game loop
while true; do
    # Prompt the user for a guess
    read -p "Guess the number of files in the current directory: " guess

    # Check the guess
    if [[ $guess -eq $correct_count ]]; then
        echo "Congratulations! That's correct."
        break
    elif [[ $guess -lt $correct_count ]]; then
        echo "Too low, try again."
    else
        echo "Too high, try again."
    fi
done

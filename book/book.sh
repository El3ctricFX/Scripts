#!/run/current-system/sw/bin/bash


# Path to the file containing the Bible verses
VERSE_FILE="booklist.txt"

# Check if the file exists
if [ ! -f "$VERSE_FILE" ]; then
    echo "Error: The file $VERSE_FILE does not exist."
    exit 1
fi

# Get the number of lines in the file
LINE_COUNT=$(wc -l < "$VERSE_FILE")

# Generate a random number within the range of the number of lines
RANDOM_LINE=$(( (RANDOM % LINE_COUNT) + 1 ))

# Output the random line
sed -n "$RANDOM_LINE p" "$VERSE_FILE"

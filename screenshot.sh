

# Get current date in multiple formats
date_formatted=$(date +%Y-%m-%d)
date_folder=$(date +"%B-%d-%Y")  # Format: August-23-2025
date_short=$(date +%Y-%m-%d)     # For filename

# Create directory if it doesn't exist
screenshot_dir="$HOME/Pictures/daily/$date_folder"
mkdir -p "$screenshot_dir"

# Find the next available counter
counter=1
while [[ -f "$screenshot_dir/${date_short}-${counter}.png" ]]; do
  ((counter++))
done

# Take screenshot
grimblast --freeze copysave area "$screenshot_dir/${date_short}-${counter}.png"

# Open in swappy for editing
swappy -f "$screenshot_dir/${date_short}-${counter}.png"


# Prompt user for the start and end of the range
read -p "Enter the start of the range: " start
read -p "Enter the end of the range: " end
read -p "Enter the folder name prefix: " prefix

# Loop through the specified range and create folders with custom names
for i in $(seq $start $end); do
  mkdir -p "$prefix$i"
done

# Self-deletion of the script
rm ./custom_folders.sh

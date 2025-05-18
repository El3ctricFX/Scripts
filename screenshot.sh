
date_formatted=$(date +%Y-%m-%d)
counter=1


while [[ -f ~/Pictures/${date_formatted}-${counter}.png ]]; do
  ((counter++))
done


#grim -g "$(slurp)" ~/Pictures/${date_formatted}-${counter}.png
grimblast --freeze copysave area ~/Pictures/${date_formatted}-${counter}.png


swappy -f ~/Pictures/${date_formatted}-${counter}.png 

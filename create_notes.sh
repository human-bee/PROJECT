#!/bin/bash

# Loop through all SONG directories
for song_dir in SONG */; do
    if [[ -d "$song_dir" ]]; then
        # Extract song number from directory name
        song_num=$(echo "$song_dir" | grep -o '[0-9]\+')
        
        # Create NOTES.TXT in BEN folder
        mkdir -p "${song_dir}BEN"
        cat > "${song_dir}BEN/NOTES.TXT" << EOF
Notes for BEN's version of SONG ${song_num}:

Date Created: 
Last Modified: 
Status: 
Comments: 
EOF

        # Create NOTES.TXT in CONNOR folder
        mkdir -p "${song_dir}CONNOR"
        cat > "${song_dir}CONNOR/NOTES.TXT" << EOF
Notes for CONNOR's version of SONG ${song_num}:

Date Created: 
Last Modified: 
Status: 
Comments: 
EOF

        # Create NOTES.TXT in FINAL folder
        mkdir -p "${song_dir}FINAL ${song_num}"
        cat > "${song_dir}FINAL ${song_num}/NOTES.TXT" << EOF
Notes for FINAL version of SONG ${song_num}:

Date Created: 
Last Modified: 
Status: 
Comments: 
EOF
    fi
done

echo "NOTES.TXT files have been created in all BEN, CONNOR, and FINAL folders." 
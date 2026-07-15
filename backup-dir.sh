#!/bin/bash

#Backing up from Source Dir to Destination Dir

SOURCE="/mnt/c/Users/91703/OneDrive/Desktop/codetrial"
DESTINATION="/mnt/c/Users/91703/OneDrive/Desktop/Desti"
DATE=$(date +%Y-%m-%d__%H-%M-%S)


# Checking for the source dir
if [ ! -d "$SOURCE" ]; then
    echo "The source Dir $SOURCE does not exist"
    exit 1
fi

#Creating a Destibnation dir
mkdir -p "$DESTINATION/$DATE"

cp -r "$SOURCE" "$DESTINATION/$DATE"

echo "Backups of Directory completed on $DATE"



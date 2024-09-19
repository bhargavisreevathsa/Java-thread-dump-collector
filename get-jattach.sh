#!/bin/sh

#Set the Repo URL
REPO_URL="https://github.com/apangin/jattach/releases/latest/download"

#Set the file name to be downloaded
FILE_NAME="jattach"

#Download the jattach library
echo "Downloading the Jattach Library"
DOWNLOAD_OUTPUT=$(curl -L -o "$FILE_NAME" "$REPO_URL/$FILE_NAME" 2>&1)

#Check the download status
if [[ $? -ne 0 ]]; then
    echo "Download failed. Output:"
    echo "$DOWNLOAD_OUTPUT"
    exit 1
fi

#Change the file permissions
chmod +x "$FILE_NAME"

#Display the current permissions
LIST_CMD_OUTPUT=$(ls -l $FILE_NAME 2>&1)
echo "$LIST_CMD_OUTPUT"

#Move to /usr/local/bin
echo "Moving to executable directory"
sudo mv "$FILE_NAME" /usr/local/bin

#Print the current file location and permissions
LIST_FILE=$(ls -l /usr/local/bin/$FILE_NAME 2>&1)
echo "$LIST_FILE"


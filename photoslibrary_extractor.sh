#!/bin/bash
cd ~/Downloads
clear
echo -e "\e[7m---photoslibrary_extractor by elias---"
sleep 2s
echo
echo
echo
echo "the tool helps you to extract photos and videos from a damaged apple photo library (.photoslibrary)"
sleep 3s
echo
echo
echo
echo "press ENTER to continue"
read
clear
echo "please give me your password for root access"
sudo clear
mkdir ~/Downloads/YourLibrary
clear
echo "!!! BACKUP THE LIBRARY ON A USB OR SIMILAR!!!"
sleep 3s
echo
echo
echo
read
echo "press ENTER to continue"
clear
echo "as soon as you press ENTER a new window opens. please drag and drop your library into it and come back to terminal."
read
open ~/Downloads/YourLibrary
clear
echo "the library is in it? please press ENTER to contiue"
read
clear
mv ~/Downloads/YourLibrary/*.photoslibrary ~/Downloads/YourLibrary/123.photoslibrary
rm -r ~/Downloads/YourLibrary/123.photoslibrary/resources/derivatives/masters/
cd ~/Downloads/YourLibrary/
mkdir ~/Downloads/YourMedia/
mkdir ~/Downloads/YourMedia/Photos/
mkdir ~/Downloads/YourMedia/Videos/
clear
echo "now the process can begin. please press ENTER"
read
sudo find . -name '*.jpg' -exec cp {} ~/Downloads/YourMedia/Photos/ \;
sudo find . -name '*.jpeg' -exec cp {} ~/Downloads/YourMedia/Photos/ \;
sudo find . -name '*.png' -exec cp {} ~/Downloads/YourMedia/Photos/ \;
sudo find . -name '*.heic' -exec cp {} ~/Downloads/YourMedia/Photos/ \;
sudo find . -name '*.gif' -exec cp {} ~/Downloads/YourMedia/Photos/ \;
sudo find . -name '*.tiff' -exec cp {} ~/Downloads/YourMedia/Photos/ \;
sudo find . -name '*.raw' -exec cp {} ~/Downloads/YourMedia/Photos/ \;
sudo find . -name '*.mp4' -exec cp {} ~/Downloads/YourMedia/Videos/ \;
sudo find . -name '*.mov' -exec cp {} ~/Downloads/YourMedia/Videos/ \;
sudo find . -name '*.avi' -exec cp {} ~/Downloads/YourMedia/Videos/ \;
sudo find . -name '*.wmv' -exec cp {} ~/Downloads/YourMedia/Videos/ \;
sudo find . -name '*.mpg' -exec cp {} ~/Downloads/YourMedia/Videos/ \;
sudo find . -name '*.swf' -exec cp {} ~/Downloads/YourMedia/Videos/ \;
echo press ENTER to delete the unusable files
read
sudo rm -r ~/Downloads/YourLibrary
clear
echo "FINISH"
sleep 1
echo "press ENTER to open the Folder with the files. stored in Downloads -> Photos"
read
open ~/Downloads/YourMedia/

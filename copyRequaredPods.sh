#!/bin/sh

cocoaPodsRepoPath=~/.cocoapods/repos/master/Specs
applicasterPublicRepoPath=./Specs

echo "Updating latest public repo of cocopods\n"
pod repo update

echo "Pulling latest master branch\n"
git fetch
git pull origin master

getArray() {
    array=() # Create array
    while IFS= read -r line # Read a line
    do
    array+=("$line") # Append line to the array
    done < "$1"
}

echo "Retrieving items from the list\n"
getArray "./itemList.sh"

echo $cocoaPodsRepoPath
echo $applicasterPublicRepoPath

rm -rf $applicasterPublicRepoPath/*

for folderName in "${array[@]}"
do

    echo "Copy Folder = "$folderName

    cp -r $cocoaPodsRepoPath/$folderName $applicasterPublicRepoPath/$folderName
done


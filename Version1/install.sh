#!/usr/bin/env bash

# Default the folder name to "MyTemplates".
folderName="MyTemplates"

# Ensure that at most one argument has been passed in.
if [ "$#" -eq 1 ]
then
	folderName=$1
elif [ "$#" -gt 1 ]
then
	echo -e "This script takes one argument at most.\\ne.g. install.sh \"MyTemplates\""
	exit 1
fi

# Determine the install directory.
installDirectory=~/Library/Developer/Xcode/Templates/File\ Templates/"$folderName"

echo ""

# Create the install directory if it does not exist.
if [ ! -d "$installDirectory" ]
then
	mkdir -p "$installDirectory"
fi

# Copy all of the xctemplate folders into the install directory.
#cp -r -f *.xctemplate "$installDirectory"

# Remove old templates
# Add here new templates if your are created ones.
echo "Removing old templates..."
rm -rf "${installDirectory}/MVC + UITableView.xctemplate"
rm -rf "${installDirectory}/MVC Module.xctemplate"
rm -rf "${installDirectory}/MVC + UICollectionView.xctemplate"
rm -rf "${installDirectory}/UITableViewCell + xib.xctemplate"
rm -rf "${installDirectory}/MVC Swift Module.xctemplate"
rm -rf "${installDirectory}/MVC Swift + UITableView.xctemplate"

cd Templates

echo "😎  Installing new templates..."
# Copy new templates
rsync -a --include '*/' --include '*.png' --include '*.h' --include '*.m' --include '*.swift' --include '*.xib' --include '*.plist' --include '*.xctemplate' --exclude '*' . "$installDirectory"

echo "🎉  Done! Templates are installed to $installDirectory 🎉"
echo ""

# please update these versions manually! (no automatic way implemented yet)
echo "👉🏻  MVC v3.0 Objective-C xCode 9.0+ support"
echo "👉🏻  MVC + UITableView v3.0 Objective-C xCode 9.0+ support"
echo "👉🏻  MVC + UICollectionView v3.0 Objective-C xCode 9.0+ support"
echo "👉🏻  MVC v3.1 Swift 4.0"
echo "👉🏻  MVC v3.1 Swift 4.0 + UITableView"
echo "👉🏻  UITableViewCell + xib v2.0 Objective-C xCode 9.0+ support"
echo ""
echo "💡  You can create modules this way: Xcode -> File -> New -> File... -> iOS -> MyTemplates"
echo "Happy coding! 🙃"

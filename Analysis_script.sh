#!/bin/bash

# Change extension to .apk
#for f in *; do
#	mv -- "$f" "${f%}.apk"
#done

# Remove .apk extension
#for f in *.apk; do
#	mv -- "$f" "${f%.apk}"
#done

# Retrieve permissions of all apps contained in the given directory
# save these permissions in permissions.txt
for f in *.apk; do
	aapt d permissions "$f" >> /home/theraid/Documents/Article_writing/Data_collection/Permissions_data/benign_plus_malware_permissions.txt
done

# Retrieve permissions of all apps contained in the given directory
# save these permissions in {appName}.txt
#for f in *.apk; do
#	aapt d permissions "$f" | grep permission > /home/theraid/Documents/Master_Thesis_report/testModules/Malware_apps_100/malware_100_permissions/"${f%.apk}.txt"
#done


# Retrieve package and rename all fines in a directory
#for f in *.apk; do
#	aapt d permissions "$f" | grep -w package > /home/theraid/Documents/test/temp_file.txt
#	new_name=$(cat /home/theraid/Documents/test/temp_file.txt | cut -d " " -f2)
#	mv -- "$f" $new_name.apk
#done

# Retrieve package names
#for f in *.apk; do
#    aapt d permissions "$f" | grep -w package | cut -d ":" -f2 >> /home/theraid/Desktop/Social_media_apps/list.txt
#done


#!/bin/bash
#actually lets get the user current working directory
userCWD=$(pwd)


#create our backup file name
backupArchiveFile=$userCWD_$(date +%Y%m%d%H%M%S).tar
backupCompressedFile=$userCWD_$(date +%Y%m%d%H%M%S).tar.gz
echo $backupFile

#ask user if they want to archive or compress
echo "Do you want to archive eor compress? A/a or C/c"

read userRes

if [ "$userRes" == "a" -o "$userRes" == "A" ]
then
	#user wants to archive
	#do stuff here
	tar cvf $backupArchiveFile $userCWD
elif [ "$userRes" == "c" -o "$userRes" == "C" ]
then
	#user wants to compress
	#do stuff here
	tar cvzf $backupCompressedFile $userCWD
else
	echo "Input value unknown"
fi

# later can send it somewhere

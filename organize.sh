
#!/bin/sh

#This script organises your directory and place them in appropraite directories for .mp3, .mp4, .jpg, .png etc.

#COSNTANTS
MOVIES="Movies/"
MUSIC="Music/"
PDF="Pdf/"
PICTURES="Picture/"

for d in *
do
	if [[ "$d" =~ .mp4|.avi|.mkv|.mov|.wmv  ]]
	 then
		if [[ -d "$MOVIES" ]]
		then
			mv "$d" "$MOVIES"
		else
			mkdir $MOVIES
			mv "$d" "$MOVIES"	
		fi
	elif [[ "$d" =~ .mp3|.wma|.aac|.m3a ]]
	then
		if [[ -d "$MUSIC" ]]
                then
                        mv "$d" "$MUSIC"
                else
                        mkdir $MUSIC
                        mv "$d" "$MUSIC"
                fi
	elif [[ "$d" =~ .pdf ]]
	then
		if [[ -d "$PDF" ]]
		then
			mv "$d" "$PDF"
		else
			mkdir $PDF
			mv "$d" "$PDF"
		fi
	elif [[ "$d" =~ .jpg|.png|.gif|.ico ]]
	then
		if [[ -d  "$PICTURES" ]]
		then
			mv "$d" "$PICTURES"
		else
			mkdir $PICTURES
			mv "$d" "$PICTURES"
		fi
	else 
		echo "***********************************"
		echo "*                                 *"
		echo "*                                 *"
		echo "*      IT IS DONE!!!              *"
		echo "*                                 *"
		echo "*                                 *"
		echo "*                                 *"
		echo "***********************************"
	fi
done

#show cuurent directory
pwd

#show long formats of files and alos hidden files
ls -la

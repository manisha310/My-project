#!/bin/sh

echo "What is your name?"
read Person
echo "Hello $Person !"
sleep 2
echo "Press 1 to create a new folder or directory.
Press 2 to create a new file.
Press 3 to check and install software or packages.
Press 4 to Reboot your machine.
Press 5 to check current date and time.
Press 6 to search on Google.
Press 7 to add/create user and password.
Press 8 to play song in current OS player.
Press 9 to search on Google to get top 5 url.
Press 10 to login to your Facebook account and update a status '\Hello Probog\':"
sleep 1
echo "Enter a number"
read Number

case "$Number" in
	"1") 
	echo "Enter directory name"
	read Name
	mkdir ./$Name
	echo "$Name created";;
	"2")
	echo "Enter File name"
	read Name
	touch $Name
	echo "$Name created";;
	"3")
	echo "Enter the package name"
	read Package
	yum install $Package
	echo "$Package installed";;
	"4")
	sudo reboot;;
	"5")
	date;;
	"6")
	curl http:// www.google.com;;
	"7") 
	echo "Enter username"
	read $username
	useradd -m -p $username;;
	"8")
	echo "Enter song name with its format: "
	read $song
	play $song;;
	
esac
	



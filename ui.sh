#!/bin/bash

# Function to display a menu using dialog
show_menu() {
	choice=$(dialog --title "Main Menu" --menu "Choose an option" 15 50 4 \
		1 "Check Disk Space" \
		2 "Check System Uptime" \
		3 "Show Current Users" \
		4 "Exit" \
		3>&1 1>&2 2>&3)

	case $choice in
	1)
		check_disk_space
		;;
	2)
		check_uptime
		;;
	3)
		show_users
		;;
	4)
		exit 0
		;;
	*)
		dialog --msgbox "Invalid option. Try again." 5 30
		show_menu
		;;
	esac
}

# Function to check disk space
check_disk_space() {
	dialog --msgbox "$(df -h)" 20 50
	show_menu
}

# Function to check system uptime
check_uptime() {
	dialog --msgbox "$(uptime)" 20 50
	show_menu
}

# Function to show current users
show_users() {
	dialog --msgbox "$(who)" 20 50
	show_menu
}

# Display the menu
show_menu

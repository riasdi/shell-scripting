#!/bin/bash

# Function to display menu
display_menu() {
    echo "1. Add User"
    echo "2. Delete User"
    echo "3. Modify User"
    echo "4. Create Group"
    echo "5. Add User to Group"
    echo "6. Delete User from Group"
    echo "7. Backup Directory"
    echo "8. Exit"
}

# Function to check if user exists
user_exists() {
    local username=$1
    if id "$username" &>/dev/null; then
        return 0 # User exists
    else
        return 1 # User does not exist
    fi
}

# Function to add user
add_user() {
    read -p "Enter username: " username
    if user_exists $username; then
        echo "User '$username' already exists."
    else
        sudo adduser $username
        echo "User '$username' added successfully."
    fi
}

# Function to delete user
delete_user() {
    read -p "Enter username to delete: " username
    sudo deluser $username
}

# Function to modify user
modify_user() {
    read -p "Enter username to modify: " username
    sudo usermod -a -G sudo $username
}

# Function to create group
create_group() {
    read -p "Enter group name: " groupname
    sudo addgroup $groupname
}

# Function to add user to group
add_user_to_group() {
    read -p "Enter username: " username
    read -p "Enter group name: " groupname
    sudo adduser $username $groupname
}

# Function to delete user from group
delete_user_from_group() {
    read -p "Enter username: " username
    read -p "Enter group name: " groupname
    sudo deluser $username $groupname
}

# Function to backup directory
backup_directory() {
    read -p "Enter directory to backup: " directory
    timestamp=$(date +"%Y%m%d%H%M%S")
    backup_file="backup_$timestamp.tar.gz"
    tar -czvf $backup_file $directory
    echo "Backup created: $backup_file"
}

# Main script
while true; do
    display_menu
    read -p "Enter your choice: " choice
    case $choice in
        1) add_user ;;
        2) delete_user ;;
        3) modify_user ;;
        4) create_group ;;
        5) add_user_to_group ;;
        6) delete_user_from_group ;;
        7) backup_directory ;;
        8) echo "Exiting..."; break ;;
        *) echo "Invalid choice. Please enter a valid option." ;;
    esac
done

#!/bin/bash

function create_user {
read -p "Enter the Username: " username	
sudo useradd -m $username

echo "User Created Successfully"
}

create_user
create_user
create_user


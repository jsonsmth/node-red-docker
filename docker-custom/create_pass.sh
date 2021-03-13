#!/bin/bash

read -p "Enter your desired admin password, and this script returns a hashed value: " ADMINPASS;

node -e "console.log(require('bcryptjs').hashSync(process.argv[1], 8));" $ADMINPASS

printf "\nPlace the above value in your settings.js file within the adminAuth section\n\n"

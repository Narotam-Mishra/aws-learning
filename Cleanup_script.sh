
#!/bin/bash

# Remove SSH keys
rm -rf ~/.ssh/authorized_keys

# clear user credentials and history
rm -rf~/.aws/credentials
rm -rf~/.git-credentials
rm -rf~/.bash_history

# clean system logs and temporary files
rm -rf/var/logs/*
rm -rf/tmp/*
rm -rf/var/tmp/*

# remove user accounts
deluser tempuser --remove-home

# Lock root account
passwd -l root

# reset configuration files 
rm -rf/etc/nginx/nginx.conf

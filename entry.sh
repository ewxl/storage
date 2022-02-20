#!/bin/sh

ln -s /usr/etc/* /etc/

test -f /etc/ssh/ssh_host_ed25519_key || ssh-keygen -A

chown 0 /home /home/*
chmod 755 /home /home/*
chmod 550 /home/*/.ssh
chmod 440 /home/*/.ssh/authorized_keys

$@


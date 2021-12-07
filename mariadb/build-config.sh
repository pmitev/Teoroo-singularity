#!/bin/bash

# build an image
sudo singularity build mariadb.sif Singularity.mariadb

# make a backup copy
cp -a mariadb.sif mariadb.sif.bak

# Add an overlay for the config
singularity overlay create --size 64 --create-dir /etc/mysql mariadb.sif

# copy the config file in case you want to modufy and bind it later
singularity exec mariadb.sif cp /etc/mysql/my.cnf .

# Change the user to the current one - adapt if you need something else
singularity exec --writable mariadb.sif bash -c 'sed -ie "s/^#user.*/user = $USER/" /etc/mysql/my.cnf'



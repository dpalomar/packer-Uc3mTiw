#!/bin/bash

# Install Ansible repository.
sudo apt-get -y update && sudo apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade
sudo apt-get -y install software-properties-common
sudo apt-add-repository ppa:ansible/ansible

# Install Ansible.
sudo apt-get -y update
sudo apt-get -y install ansible

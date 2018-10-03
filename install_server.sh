#!/bin/bash
set -e
if [ `id -u 1000 2>/dev/null || echo -1` -ge 0 ]; then 
    echo "The user with id 1000 exist, please change the configuration or remove it!"
    exit
fi

apt-get install -y apt-transport-https ca-certificates sudo 

if ! [ -x "$(command -v apt-add-repository)" ]; then 
    sudo apt-get --assume-yes update 
    sudo apt-get install --assume-yes software-properties-common
fi

if ! [ -x "$(command -v ansible)" ]; then
    sudo apt-add-repository -y ppa:ansible/ansible
    sudo apt-add-repository -y ppa:git-core/ppa
    sudo apt-get update
    sudo apt-get --assume-yes upgrade
    sudo apt-get --assume-yes install ansible
    sudo apt-get --assume-yes install git
fi

git clone https://github.com/VPecquerie/AnsibleConfiguration.git /tmp/AnsibleConfiguration && cd /tmp/AnsibleConfiguration
ansible-playbook ansible_sources_server/debian.yml -i hosts -vvv

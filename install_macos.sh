#!/bin/bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install ansible git

git clone https://github.com/VPecquerie/AnsibleConfiguration.git /tmp/AnsibleConfiguration && cd /tmp/AnsibleConfiguration
ansible-playbook ansible_sources_macbook/macos.yml -i hosts -vvv
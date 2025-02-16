#!/bin/bash

dnf install ansible -y
#ansible push
# ansible-playbook -i inventory.ini backend.yaml
#ansible pull
ansible-pull -i localhost, -u https://github.com/BhavyaAudisri/ansible-roles-tf.git backend.yaml

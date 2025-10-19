#!/bin/bash

ansible-playbook -i inventories/hosts --diff playbook.yaml

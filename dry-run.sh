#!/bin/bash

ansible-playbook -i inventories/hosts --check --diff playbook.yaml

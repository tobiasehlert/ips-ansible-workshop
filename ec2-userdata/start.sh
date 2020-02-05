#!/bin/bash
yum install git-core ansible -y
ansible-pull -U https://github.com/tobiasehlert/ips-ansible-workshop ec2-userdata/start.yml

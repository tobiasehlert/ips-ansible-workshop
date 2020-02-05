#!/bin/bash
yum install git-core -y
amazon-linux-extras install ansible2
ansible-pull -U https://github.com/tobiasehlert/ips-ansible-workshop ec2-userdata/start.yml

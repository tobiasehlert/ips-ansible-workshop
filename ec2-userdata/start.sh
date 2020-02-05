#!/bin/bash
yum install ansible git-core -y
ansible-pull -U https://github.com/tobiasehlert/ips-ansible-workshop/ec2-userdata start.yml

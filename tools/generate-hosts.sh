#!/bin/bash
# short script to get public dns name and ansible-workshop tag..
# then you need to do manual stuff, to build a nice working hosts.yml
aws ec2 describe-instances --output text --filters Name=instance-state-name,Values=running --query 'Reservations[*].Instances[*].[PublicDnsName, [Tags[?Key==`ansible-workshop`].Value] [0][0] ]' > hosts-tmp.yml


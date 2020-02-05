#!/bin/bash
# short script to get public dns name and ansible-workshop tag..
# then you need to do manual stuff, to build a nice working hosts.yml
tmpfile=/tmp/hosts.yml
echo 'all:
  hosts:' > $tmpfile
aws ec2 describe-instances --output text --filters Name=instance-state-name,Values=running --query 'Reservations[*].Instances[*].[PublicDnsName, [Tags[?Key==`ansible-workshop`].Value] [0][0] ]' | grep master | awk '{print "    " $1 ":"}' >> $tmpfile
echo '  children:
    webservers:
      hosts:' >> $tmpfile
aws ec2 describe-instances --output text --filters Name=instance-state-name,Values=running --query 'Reservations[*].Instances[*].[PublicDnsName, [Tags[?Key==`ansible-workshop`].Value] [0][0] ]' | grep webservers | awk '{print "        " $1 ":"}' >> $tmpfile
echo '    backendservers:
      hosts:' >> $tmpfile
aws ec2 describe-instances --output text --filters Name=instance-state-name,Values=running --query 'Reservations[*].Instances[*].[PublicDnsName, [Tags[?Key==`ansible-workshop`].Value] [0][0] ]' | grep backendservers | awk '{print "        " $1 ":"}' >> $tmpfile
mv $tmpfile ~/ips-ansible-workshop/hosts.yml

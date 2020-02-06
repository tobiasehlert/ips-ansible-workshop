# IPS Ansible workshop

Repo for IP-Solutions Ansible workshop 2020-02-06

This lab is perfect for running in AWS.. :)

## Index readme

* [What is this repo about](#what-is-this-repo-about)
	* [Folder structure](#folder-structure) 
* [Prequesitions](#prequesitions)
* [How to run the lab](#how-to-run-the-lab)
* [Author](#author)

## What is this repo about?

This repo has multiple parts that are required to run a small demo on the benefits with Ansible.

### Folder structure

**ec2-userdata/**

This folder contains två scripts and has to do with autoprovisioning. This is something that can be extended really hard and we could do awesome things!

* *start.sh* is the script that contains the content that is added to the user metadata field in AWS when creating a new instance and triggering some commands on installation.
* *start.yml* is the ansible-playbook that is triggered with ansible-pull when start.sh script is executed on boot of the server.. but it's not doing that much.

This meaning with this folder and files is to show potential in what could be done..

**group_vars/**

This is nothing that we actually use.. this is more for demo purse, that you can have group_vars based on some critera..

One file here could be for example all mysqlservers that should have some certain var defined or so..

**html/**

This folder contains a simple index.html page that is uploaded from a playbook to the webserver.

See this more of a template folder..

**playbooks/**

This folder contains a suite of some playbooks that are utilized in this lab.

There is a small description in every file, what is done.. explore and learn!

* *mysqlserver.yml* installes mysql-server on mysqlservers group
* *newuser.yml* creates a user on the new server and generates an ssh-key on that created user
* *ping.yml* does ping all servers (not in a normal ping pong.. it's more a debug test to see and answer).. basically
* *software.yml* installes a couple of software on the remote servers based on hosts parameter
* *tutti.yml* is a large playbook that includes all other playbooks except ping.yml
* *webserver.yml* is a playbook that does the setup of a apache server and replaces the index.html file

**tools/**

This folder contains a script that runs the aws tool to collect data of our running instances that have a tagname called ansible-workshop and filter on values webservers, backendservers and mysqlservers.

Then it creates a hosts.yml file that is placed in the root folder of the repo, so that you can run the playbooks from there :)

## Prequesitions

*TBA*

## How to run the lab

*TBA*

## Author

[Tobias Lindberg])https://github.com/tobiasehlert/) - initial creator


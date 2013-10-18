#!/bin/bash

#Debian 7.2
cd ./debian-7.2-amd64
packer build --only=virtualbox template.json

#CentOS 6.4
cd ../centos-6.4-amd64
packer build --only=virtualbox template.json

#Ubuntu 12.04
cd ../ubuntu-12.04-server-amd64
packer build --only=virtualbox template.json

#Ubuntu 13.10
cd ../ubuntu-13.10-server-amd64
packer build --only=virtualbox template.json
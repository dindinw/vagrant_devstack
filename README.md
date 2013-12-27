vagrant_devstack
================

My Vagrant Profile for DevStack env 

## Installation of Vagrant
Add 64bit box (required 64bit not 33)
	
	vagrant box add precise64  http://files.vagrantup.com/precise64.box

Starting vagrant

	vagrant up

Logging in

	vagrant ssh


Create instance by using openstack

	http://192.168.33.10


The instacane-1 use 192.168.33.130 automatically


After created you can ssh cirros@192.168.33.130 in your vagrant box

How to Access from outside v-box

	vagrant ssh & sudo iptables --flush & exit
	ssh cirros@192.168.33.130



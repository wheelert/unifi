#!/bin/bash
#
# Force DHCP DNS reload on Unifi Security Gateway
#
# run this on the unit via cron
#

mv /etc/hosts /etc/hosts_back
head -n 9 /etc/hosts_back > /etc/hosts
/etc/init.d/dnsmasq force-reload

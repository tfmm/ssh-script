#!/bin/bash
# Created by rlong to get around OSX 10.10's crappy dns resolution and lack of appending search domains.

ip=`nslookup $1 | egrep -o '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' |tail -1`

ssh $ip

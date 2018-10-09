#!/bin/bash

# localhost
l="0.0.0.0:8888"
# remote
r="http://idea.lanyus.com:80"
# download
d="https://github.com/ilanyu/ReverseProxy/releases/download/v1.4/ReverseProxy_linux_amd64"
# filename
f="ReverseProxy_linux_amd64"
# file path
p="/usr/bin/"
pf=""$p""$f""

if [ -f $pf ];then
 echo "start..."
else
 echo "ReverseProxy is downloading..."
 yum install wget
 wget -c -O $pf $d
fi
chmod 555 $pf

cd $p

./$f -l $l -r $r

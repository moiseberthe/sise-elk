#!/bin/bash
#sed -i.bak "s/findlibs.sh\`/findlibs.sh\` -lcrypt -lpam/g" /root/vsftpd/Makefile 
export PATH="/usr/share/logstash/bin:$PATH"
service ssh start && service kibana start && service nginx start && bash
#bash

#!/bin/bash

cd /etc/logstash/
wget https://raw.githubusercontent.com/moiseberthe/sise-elk/main/kibana/td.log

apt update && apt install nano nginx zip -y
service nginx start

cd /var/www/html/
wget https://raw.githubusercontent.com/moiseberthe/sise-elk/main/kibana/app.zip
unzip app.zip
#bash
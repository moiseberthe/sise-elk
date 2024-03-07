#!/bin/bash

# cd /etc/logstash/
# wget https://raw.githubusercontent.com/moiseberthe/sise-elk/main/kibana/td.log

apt update && apt install nano nginx zip -y
service nginx start

# cd /var/www/html/
# wget https://raw.githubusercontent.com/moiseberthe/sise-elk/main/kibana/app.zip
# unzip app.zip

cd /etc/logstasth/conf.d/
wget https://raw.githubusercontent.com/moiseberthe/sise-elk/main/correction/td1.conf
wget https://raw.githubusercontent.com/moiseberthe/sise-elk/main/correction/nginx.conf
#bash
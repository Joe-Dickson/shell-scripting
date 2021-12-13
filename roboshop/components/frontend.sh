#!/bin/bash

# yum install nginx -y
# systemctl enable nginx
# systemctl start nginx
# Let's download the HTML content that serves the roboSHop Project UI and deploy under the Nginx path.

# curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip"
# Deploy in Nginx Default Location.

# cd /usr/share/nginx/html
# rm -rf *
# unzip /tmp/frontend.zip
# mv frontend-main/* .
# mv static/* .
# rm -rf frontend-master static README.md
# mv localhost.conf /etc/nginx/default.d/roboshop.conf
# Finally restart the service once to effect the changes.

# systemctl restart nginx


## Check whether the script is running as a root user or not


echo Frontend Setup
yum install nginx -y
curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip"
cd /usr/share/nginx/html ||
rm -rf *
nzip /tmp/frontend.zip
mv frontend-main/* .
mv static/* .
rm -rf frontend-master static README.md
mv localhost.conf /etc/nginx/default.d/roboshop.conf
systemctl enable nginx
systemctl start nginx
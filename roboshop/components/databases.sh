#!/bin/bash
LOG_FILE=/tmp/roboshop.log
source components/common.sh

### MongoDB Setup
curl -s -o /etc/yum.repos.d/mongodb.repo https://raw.githubusercontent.com/roboshop-devops-project/mongodb/main/mongo.repo &>>${LOG_FILE}
STAT_CHECK $? "Download MongoDB repo"


yum install -y mongodb-org &>>${LOG_FILE}
STAT_CHECK $? "Install MongoDB"

sed -i 's/127.0.0.1/0.0.0.0/' /etc/mongod.conf &>>${LOG_FILE}
STAT_CHECK $? "Update MongoDB Service"

systemctl enable mongod &>>${LOG_FILE} && systemctl restart mongod &>>${LOG_FILE}
STAT_CHECK $? "Start MongoDB Service"

DOWNLOAD mongodb

cd /tmp/mongodb-main
mongo < catalogue.js &>>${LOG_FILE} && mongo < users.js &>>${LOG_FILE}
STAT_CHECK $? "Load Schema"

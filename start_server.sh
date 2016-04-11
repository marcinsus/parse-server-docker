#!/bin/sh
/usr/bin/mongod --config /etc/mongodb.conf &
cd /usr/src/app
npm start &
sh start_dashboard.sh

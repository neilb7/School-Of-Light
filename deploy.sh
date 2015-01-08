#!/bin/bash

zip -r School-of-Light.zip . -x ".*" -x "*/.*"
scp School-of-Light.zip webadmin@geniilabs.in:/home/webadmin/sites

ssh webadmin@geniilabs.in 'bash -s' <<'ENDSSH'
  unzip -o /home/webadmin/sites/School-of-Light.zip -d /home/webadmin/sites/School-of-Light
  rm /home/webadmin/sites/School-of-Light.zip
  chmod 755 -R /home/webadmin/sites/School-of-Light
ENDSSH

rm School-of-Light.zip
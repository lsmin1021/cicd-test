#! /bin/bash
find /opt/codedeploy-agent/deployment-root/84e55d14-168e-46d5-abd7-a68840200e69/* -maxdepth 0 -type 'd' | grep -v $(stat -c '%Y:%n' /opt/codedeploy-agent/deployment-root/84e55d14-168e-46d5-abd7-a68840200e69 /* | sort -t: -n | tail -1 | cut -d: -f2- | cut -c 3-) | xargs rm -rf
sudo rm -rf /home/ec2-user/*

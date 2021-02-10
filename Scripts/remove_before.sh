#! /bin/bash
find /opt/codedeploy-agent/deployment-root/68f95b87-01b7-49d1-9f6d-7507d786b431/* -maxdepth 0 -type 'd' | grep -v $(stat -c '%Y:%n' /opt/codedeploy-agent/deployment-root/68f95b87-01b7-49d1-9f6d-7507d786b431/* | sort -t: -n | tail -1 | cut -d: -f2- | cut -c 3-) | xargs rm -rf
sudo rm -rf /home/ec2-user/*
